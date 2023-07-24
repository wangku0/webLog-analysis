# HiveSQL分析代码

#### table name

```sql
tab_name
dw_avgpv_user_everyhour_oneday
dw_avgsessions_user_everyhour_oneday
dw_click_pageviews_detail
dw_click_stream_visit_detail
dw_hotpages_everyday
dw_inime_topn_everyday
dw_inpage_newuser_topn
dw_inpage_olduser_topn
dw_inpage_topn_everyday
dw_oute_numbs
dw_outime_topn_everyday
dw_outpage_newuser_topn
dw_outpage_olduser_topn
dw_outpage_topn_everyday
dw_page_staylongest_topn_everyday
dw_page_stayshortest_topn_everyday
dw_pvs_everyday
dw_pvs_everyhour_oneday
dw_pvs_referer_everyhour_oneday
dw_pvs_refererhost_everyhour_oneday
dw_pvs_refhost_topn_everyhour
dw_referer_newuser_topn
dw_referer_olduser_topn
dw_user_dsct_history
dw_user_dsct_new
dw_user_dstc_ip_h
dw_user_newold_everyday
dw_user_no_returning
dw_user_noreturning_everyday
dw_user_returning
dw_user_returning_everyday
dw_user_returnrate_everyday
dw_uvs_everyhour_oneday
dw_vvs_everyhour_oneday
dw_webflow_basic_info
dw_weblog_detail
ods_click_pageviews
ods_click_stream_visit
ods_weblog_origin
t_dim_time

```



#### pageview表拓宽

需要拓宽的字段：

time_local---> daystr timestr month day hour

```sql
drop table if exists dw_click_pageviews_detail;
--创建宽表
create table dw_click_pageviews_detail(
session string,
remote_addr string,
remote_user string,
time_local string,
daystr string, --访问日期
timestr string, --访问时间
month string, --访问月
day string, --访问日
hour string, --访问时    
request string,
status string,nc	
body_bytes_sent string,
visit_step string,
page_staylong string,
http_referer string,
http_user_agent string)
partitioned by (datestr string)
row format delimited
fields terminated by '\001';
--插入宽表
insert into table dw_click_pageviews_detail partition(datestr='20181101')
select c.session,c.remote_addr,c.remote_user,c.time_local,
substring(c.time_local,0,10) as daystr,
substring(c.time_local,12) as timestr,
substring(c.time_local,6,2) as month,
substring(c.time_local,9,2) as day,
substring(c.time_local,12,2) as hour,
c.request,c.status,c.body_bytes_sent,c.visit_step,c.page_staylong,c.http_referer,c.http_user_agent
from(SELECT a.session,a.remote_addr,a.remote_user,a.time_local,a.request,a.status,a.body_bytes_sent,a.visit_step,a.page_staylong,a.http_referer,a.http_user_agent FROM ods_click_pageviews a) c;


```



#### visit表拓宽

inTime---> inTime_day,strtimestr month day hour

outTime--->inTime_day,strtimestr month day hour

```sql
drop table if exists dw_click_stream_visit_detail;
--创建宽表
create table dw_click_stream_visit_detail(
session string,
remote_addr string,
inTime string,
inTime_daystr string,
inTime_timestr string,
inTime_month string,
inTime_day string,
inTime_hour string,
outTime string,
outTime_daystr string,
outTime_timestr string,
outTime_month string,
outTime_day string,
outTime_hour string,
inPage string,
outPage string,
referal string,
pageVisits int)
partitioned by (datestr string)
row format delimited
fields terminated by '\001';

--插入宽表
insert into table dw_click_stream_visit_detail partition(datestr='20181101')
select c.session,c.remote_addr,c.inTime,
substring(c.inTime,0,10) as inTime_daystr,
substring(c.inTime,12) as inTime_timestr,
substring(c.inTime,6,2) as inTime_month,
substring(c.inTime,9,2) as inTime_day,
substring(c.inTime,12,2) as inTime_hour,
c.outTime,
substring(c.outTime,0,10) as outTime_daystr,
substring(c.outTime,12) as outTime_timestr,
substring(c.outTime,6,2) as outTime_month,
substring(c.outTime,9,2) as outTime_day,
substring(c.outTime,12,2) as outTime_hour,
c.inPage,c.outPage,c.referal,c.pageVisits
from(SELECT a.session,a.remote_addr,a.inTime,a.outTime,a.inPage,a.outPage,a.referal,a.pageVisits FROM ods_click_stream_visit a) c;

select count(*) from  ods_click_pageviews;
```

#### 单指标

##### 1. 单指标表-首页展示 single_index_everyday

```sql
时间-平均每个用户的访问频度-平均每个用户的访问时长-跳出率
drop table single_index_everyday;
create table single_index_everyday(
    od string,
    day string,
    avg_session_everyip string,    
    avg_access_time string,
    leave_rate string
) partitioned by(datestr string);

insert into table single_index_everyday partition(datestr='20181101')
select row_number() over() as od,'20181101',u.avg_session_everyip as avg_session_everyip,u.avg_access_time as avg_access_time,z.leave_rate as leave_rate
from
(select x.avg_session_everyip as avg_session_everyip,y.avg_access_time as avg_access_time
from
(select round(count(session)/count(distinct remote_addr),2) as avg_session_everyip from ods_click_stream_visit where datestr ="20181101") x
join
(select
round(sum(a.web_staylong)/count(a.session),2) as avg_access_time
from 
(select session, sum(page_staylong) as web_staylong from ods_click_pageviews where datestr ="20181101"
group by session) a)y
)u
join
(select
round((b.nums/a.vv),4)*100 as leave_rate
from
dw_webflow_basic_info a join 
(select count(*) as nums from ods_click_stream_visit where datestr ="20181101"
and pagevisits = 1
) b)z;

select * from single_index_everyday;

create table single_index_everyday(
    od varchar(50) primary key, 
    day varchar(50),
    avg_session_everyip varchar(50),
    avg_access_time varchar(50),
    leave_rate varchar(50)
);


--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table single_index_everyday \
--export-dir /user/hive_remote/warehouse/itheima.db/single_index_everyday/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1

```

当天平均访问频度(平均每个IP产生的session数)

```sql
select round(count(session)/ count(distinct remote_addr),2) from ods_click_stream_visit where datestr ="20181101"; 

```

当天平均访问时长

```sql
select
'20181101',round(sum(a.web_staylong)/count(a.session),2)
from 
(select session, sum(page_staylong) as web_staylong from ods_click_pageviews where datestr ="20181101"
group by session) a;
```

当天平均跳出率

```sql
当天跳出率=仅浏览了一个页面就离开的访问次数/所有访问次数：
select
'20181101',round((b.nums/a.vv),4)*100
from
dw_webflow_basic_info a join 
(select count(*) as nums from ods_click_stream_visit where datestr ="20181101"
and pagevisits = 1
) b;
```

#### 流量分析

##### 2. 统计每小时的pv量-柱/饼/折 dw_pvs_everyhour_oneday

```sql
--统计每小时的pv量（柱状图/饼图/折线图）

结果表：dw_pvs_everyhour_oneday
drop table dw_pvs_everyhour_oneday;
create table dw_pvs_everyhour_oneday(
    od string,
    daystr string,
    hour string,
    pvs string
) partitioned by(datestr string);

insert into table dw_pvs_everyhour_oneday partition(datestr='20181101')
select row_number() over() as od,'20181101',a.hour as hour,count(*) as pvs from dw_weblog_detail a group by a.hour order by a.hour asc;


select * from dw_pvs_everyhour_oneday;

create table dw_pvs_everyhour_oneday(
    od varchar(50) primary key,
    daystr varchar(50),
    hour varchar(50),
    pvs varchar(50)
);
--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_pvs_everyhour_oneday \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_pvs_everyhour_oneday/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1

x:小时
y:pvs


```

##### 3. 统计每小时的uv量-柱/饼/折 dw_uvs_everyhour_oneday

```sql
--统计每小时的uv量（柱状图/饼图/折线图）session数
结果表：dw_uvs_everyhour_oneday

drop table dw_uvs_everyhour_oneday;

create table dw_uvs_everyhour_oneday(
    od string,
    day string,
    hour string,
    uvs string
) partitioned by(datestr string);

insert into table dw_uvs_everyhour_oneday partition(datestr='20181101')
select 
row_number() over() as od,'20181101',a.hour as hour,count(distinct a.session) as uvs
from dw_click_pageviews_detail a
where  a.datestr='20181101' and a.day!='03' group by a.hour;


select * from dw_uvs_everyhour_oneday;


create table dw_uvs_everyhour_oneday(
    od varchar(50) primary key,
    day varchar(50),
    hour varchar(50),
    uvs varchar(50)
);
--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_uvs_everyhour_oneday \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_uvs_everyhour_oneday/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```

##### 4. 统计每小时的vv量-柱/饼/折  dw_vvs_everyhour_oneday

```sql
--统计每小时的vv量（柱状图/饼图/折线图）

结果表：dw_vvs_everyhour_oneday

drop table dw_vvs_everyhour_oneday;

create table dw_vvs_everyhour_oneday(
    od string,
    day string,
    hour string,
    vvs string
) partitioned by(datestr string);

insert into table dw_vvs_everyhour_oneday partition(datestr='20181101')
select row_number() over() as od,'20181101',a.hour as hour,count(distinct remote_addr) as vvs from dw_weblog_detail a
where  a.datestr='20181101'  group by a.hour;

create table dw_vvs_everyhour_oneday(
    od varchar(50) primary key,
    day varchar(50),
    hour varchar(50),
    vvs varchar(50)
);
--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_vvs_everyhour_oneday \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_vvs_everyhour_oneday/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```

##### 5. 统计每小时产生的pv量top10的各来访url-柱/饼  dw_pvs_referer_everyhour_oneday

```sql
--统计每小时各来访url产生的pv量->取top10  (饼图/柱状图)

结果表：dw_pvs_referer_everyhour_oneday
drop table dw_pvs_referer_everyhour_oneday;

create table dw_pvs_referer_everyhour_oneday(
    od string,
    day string,
    referer_url string,
    referer_host string,
    hour string,
    pv_referer_cnt string
) partitioned by(datestr string);

insert into table dw_pvs_referer_everyhour_oneday partition(datestr='20181101')
select row_number() over() as od,'20181101',http_referer,ref_host,hour,count(1) as pv_referer_cnt
from dw_weblog_detail 
group by http_referer,ref_host,hour 
having ref_host is not null
order by hour asc,pv_referer_cnt desc;
 
create table dw_pvs_referer_everyhour_oneday(
    od varchar(50) primary key,
    day varchar(50),
    referer_url varchar(5000),
    referer_host varchar(50),
    hour varchar(50),
    pv_referer_cnt varchar(50)
) ;
--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_pvs_referer_everyhour_oneday \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_pvs_referer_everyhour_oneday/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```

##### 6. 统计每小时产生的pv量top10的各来访host-柱/饼 dw_pvs_refererhost_everyhour_oneday

```sql
--统计每小时各来访host的产生的pv数并排序->取top10  (饼图/柱状图)
drop table dw_pvs_refererhost_everyhour_oneday;

create table dw_pvs_refererhost_everyhour_oneday(
    od string,
    day string,
    ref_host string,
    hour string,
    ref_host_cnts string
) partitioned by(datestr string);

insert into table dw_pvs_refererhost_everyhour_oneday partition(datestr='20181101')
select row_number() over() as od,'20181101',ref_host,hour,count(1) as ref_host_cnts
from dw_weblog_detail 
group by ref_host,hour 
having ref_host is not null
order by hour asc,ref_host_cnts desc;

select * from dw_pvs_refererhost_everyhour_oneday;

create table dw_pvs_refererhost_everyhour_oneday(
    od varchar(50) primary key,
    day varchar(50),
    ref_host varchar(50),
    hour stvarchar(50)ring,
    ref_host_cnts varchar(50)
);
--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_pvs_refererhost_everyhour_oneday \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_pvs_refererhost_everyhour_oneday/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```

--统计 当天 使用浏览器的占比(饼图/柱状图)

--统计 当天 访问栏目top10 (饼图/柱状图)

##### 7. 统计每小时所有来访者平均请求的页面数-柱/饼 dw_avgpv_user_everyhour_oneday

```sql
--人均浏览页数（平均访问深度）

结果表：dw_avgpv_user_everyhour_oneday
drop table dw_avgpv_user_everyhour_oneday;
create table dw_avgpv_user_everyhour_oneday(
    od string,
    day string,
    hour string,
    avgpv string
)  partitioned by(datestr string);

insert into table dw_avgpv_user_everyhour_oneday partition(datestr='20181101')
select row_number() over() as od,'20181101',a.hour as hour  ,round(a.pvs/b.uvs,2) as avgpv from dw_pvs_everyhour_oneday a inner join dw_uvs_everyhour_oneday b on a.hour=b.hour;

select * from dw_avgpv_user_everyhour_oneday;

create table dw_avgpv_user_everyhour_oneday(
    od varchar(50) primary key,
    day varchar(50),
    hour varchar(50),
    avgpv varchar(50)
);

--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_avgpv_user_everyhour_oneday \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_avgpv_user_everyhour_oneday/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```

##### 8. 统计每小时平均每个独立访客各访问网站的次数-柱/饼 dw_avgsessions_user_everyhour_oneday

```sql
--平均访问频度（每个访客产生的session个数）
计算方式：访问次数vv/独立访客数uv
每小时vv  /   每小时uv
dw_vvs_everyhour_oneday   dw_uvs_everyhour_oneday

drop table dw_avgsessions_user_everyhour_oneday;

create table dw_avgsessions_user_everyhour_oneday(
    od string,
    day string,
    hour string,
    avgsessions string
)  partitioned by(datestr string);

insert into table dw_avgsessions_user_everyhour_oneday partition(datestr='20181101')
select 
row_number() over() as od,'20181101',a.hour,round(a.vvs/b.uvs,2)
from dw_vvs_everyhour_oneday  a inner join dw_uvs_everyhour_oneday b on  a.hour=b.hour;

select * from dw_avgsessions_user_everyhour_oneday;


create table dw_avgsessions_user_everyhour_oneday(
    od varchar(50) primary key,
    day varchar(50),
    hour varchar(50),
    avgsessions varchar(50)
);

--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_avgsessions_user_everyhour_oneday \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_avgsessions_user_everyhour_oneday/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```

##### 9. 统计每小时每次访问的平均请求页面数

```sql
--统计每小时每次访问的平均请求页面数
计算方式：访问次数pv/独立访客数vv
每小时vv  /   每小时uv
dw_vvs_everyhour_oneday   dw_pvs_everyhour_oneday

drop table dw_avgpvs_session_everyhour_oneday;

create table dw_avgpvs_session_everyhour_oneday(
    od string,
    day string,
    hour string,
    avgpvs string
)partitioned by(datestr string);

insert into table dw_avgpvs_session_everyhour_oneday partition(datestr='20181101')
select 
row_number() over() as od,'20181101',a.hour,round(a.pvs/b.vvs,1)
from dw_pvs_everyhour_oneday  a inner join dw_vvs_everyhour_oneday b on a.hour=b.hour;

select * from dw_avgpvs_session_everyhour_oneday;

create table dw_avgpvs_session_everyhour_oneday(
    od varchar(50) primary key,
    day varchar(50),
    hour varchar(50),
    avgpvs varchar(50)
);

--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_avgpvs_session_everyhour_oneday \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_avgpvs_session_everyhour_oneday/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```

#### 受访分析

##### 当天每天各页面pvs TOPn  -未定 有问题

```sql
--热门页面统计
统计每日最热门的页面top10

drop table dw_hotpages_everyday;
create table dw_hotpages_everyday(
    day string,
    url string,
    pvs string);

insert into table dw_hotpages_everyday
select '20181101',a.request,a.request_counts from
(select request as request,count(request) as request_counts from dw_weblog_detail where datestr='20181101' group by request having request is not null) a
order by a.request_counts desc limit 10;

'''
临时想法：先过滤掉valid=flase的再进行
'''
select request,count(request)+100 as request_counts  from dw_weblog_detail where dw_weblog_detail.valid!='false' group by dw_weblog_detail.request order by request_counts dedsc limit 10;





```

##### 10.统计每天pv总量url来源top10

```sql
--统计每天pv总量url来源top10
drop table dw_pvs_referer_url_everyday;

create table dw_pvs_referer_url_everyday(
    od string,
    day string,
    ref_url string,
    ref_url_cnts string
) partitioned by(datestr string);

insert into table dw_pvs_referer_url_everyday partition(datestr='20181101')
select row_number() over() as od,'20181101',http_referer as ref_url,count(*) as ref_url_cnts
from dw_weblog_detail where ref_host is not null
group by http_referer
order by ref_url_cnts desc
limit 10;
select
select * from dw_pvs_referer_url_everyday;


create table dw_pvs_referer_url_everyday(
    od varchar(50) primary key,
    day varchar(50),
    ref_url varchar(50),
    ref_url_cnts varchar(50)
);
--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_pvs_referer_url_everyday \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_pvs_referer_url_everyday/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```



##### 11. 统计每天pv总量主机来源TOP10-柱/饼  **dw_pvs_refererhost_everyday**

```sql
--统计每天各来访host的产生的pv数并排序->取top10  (饼图/柱状图)
drop table dw_pvs_refererhost_everyday;

create table dw_pvs_refererhost_everyday(
    od string,
    day string,
    ref_host string,
    ref_host_cnts string
) partitioned by(datestr string);

insert into table dw_pvs_refererhost_everyday partition(datestr='20181101')
select row_number() over() as od,'20181101',ref_host,count(*) as ref_host_cnts
from dw_weblog_detail 
group by ref_host
having ref_host is not null
order by ref_host_cnts desc
limit 10;

select * from dw_pvs_refererhost_everyday;


create table dw_pvs_refererhost_everyday(
    od varchar(50) primary key,
    day varchar(50),
    ref_host varchar(50),
    ref_host_cnts varchar(50)
);
--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_pvs_refererhost_everyday \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_pvs_refererhost_everyday/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```



##### 12. 进入页面top8---因为只有8条-柱 dw_inpage_topn_everyday

```sql
--进入页面top8
drop table dw_inpage_topn_everyday;
create table dw_inpage_topn_everyday(
    od string,
    day string,
	inpage string,
    count_inpage string
)partitioned by(datestr string);

insert into table dw_inpage_topn_everyday partition(datestr='20181101')
select row_number() over() as od,'20181101',inpage,count(*) as count_inpage from dw_click_stream_visit_detail group by inpage order by count_inpage desc;


select * from dw_inpage_topn_everyday;

create table dw_inpage_topn_everyday(
    od varchar(50) primary key,
    day varchar(50),
	inpage varchar(50),
    count_inpage varchar(50)
);
--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_inpage_topn_everyday \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_inpage_topn_everyday/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```

##### 13. 离开页面top8-柱 dw_outpage_topn_everyday

```sql
--离开页面top8
drop table dw_outpage_topn_everyday;
create table dw_outpage_topn_everyday(
    od string,
    day string,
    outpage string,
    count_outpage string
)partitioned by(datestr string);
insert into table dw_outpage_topn_everyday partition(datestr='20181101')
select row_number() over() as od,'20181101',outpage,count(*) as count_outpage from dw_click_stream_visit_detail group by outpage order by count_outpage desc;
select * from dw_outpage_topn_everyday;

create table dw_outpage_topn_everyday(
    od varchar(50) primary key,
    day varchar(50),
    outpage varchar(50),
    count_outpage varchar(50)
);
--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_outpage_topn_everyday \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_outpage_topn_everyday/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```

##### 14. 停留时间最长页面top10-柱 dw_page_staylongest_topn_everyday

```sql
--停留时间最长页面top10
drop table dw_page_staylongest_topn_everyday;
create table dw_page_staylongest_topn_everyday(
    od string,
    day string,
    request string,
    count_request string
)partitioned by(datestr string);
insert into table dw_page_staylongest_topn_everyday partition(datestr='20181101')
select 
row_number() over() as od,'20181101',request,count(page_staylong) as page_staylong_count
from dw_click_pageviews_detail group by request order by page_staylong_count desc limit 10;

select * from dw_page_staylongest_topn_everyday;

create table dw_page_staylongest_topn_everyday(
    od varchar(50) primary key,
    day varchar(50),
    request varchar(50),
    count_request varchar(50)
);
--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_page_staylongest_topn_everyday \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_page_staylongest_topn_everyday/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```



##### 15. 停留时间最短top10-柱dw_page_stayshortest_topn_everyday

```sql
--停留时间最短top10
drop table dw_page_stayshortest_topn_everyday;
create table dw_page_stayshortest_topn_everyday(
    od string,
    day string,
    request string,
    count_time_request string
)partitioned by(datestr string);
insert into table dw_page_stayshortest_topn_everyday partition(datestr='20181101')
select 
row_number() over() as od,'20181101',request,count(page_staylong) as page_staylong_count
from dw_click_pageviews_detail group by request order by page_staylong_count asc limit 10;

select * from dw_page_stayshortest_topn_everyday;

create table dw_page_stayshortest_topn_everyday(
    od varchar(50) primary key,
    day varchar(50),
    request varchar(50),
    count_request varchar(50)
);
--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_page_stayshortest_topn_everyday \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_page_stayshortest_topn_everyday/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```



##### 16. 进入时间topn（来访集中的时间端）-柱/热力 dw_inime_topn_everyday

```sql
--进入时间topn
--以小时为单位
drop table dw_inime_topn_everyday;
create table dw_inime_topn_everyday(
    od string,
    day string,
    intime_hour string,
    count_intime string
)partitioned by(datestr string);

insert into table dw_inime_topn_everyday partition(datestr='20181101')
select row_number() over() as od,'20181101',intime_hour,count(*) as count_intime 
from dw_click_stream_visit_detail group by intime_hour order by count_intime desc;

select * from dw_inime_topn_everyday;

create table dw_inime_topn_everyday(
    od varchar(50) primary key,
    day varchar(50),
    intime_hour varchar(50),
    count_intime varchar(50)
);
--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_inime_topn_everyday \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_inime_topn_everyday/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```

##### 17. 离开时间top10-柱/热力 dw_outime_topn_everyday

```sql
--离开时间top10
--以小时为单位
drop table dw_outime_topn_everyday;
create table dw_outime_topn_everyday(
    od string,
    day string,
    outtime_hour string,
    count_outtime string
)partitioned by(datestr string);

insert into table dw_outime_topn_everyday partition(datestr='20181101')
select row_number() over() as od,'20181101',outtime_hour,count(*) as count_outtime 
from dw_click_stream_visit_detail group by outtime_hour order by count_outtime desc;

select * from dw_outime_topn_everyday;

create table dw_outime_topn_everyday(
    od varchar(50) primary key,
    day varchar(50),
    outtime_hour varchar(50),
    count_outtime varchar(50)
);
--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_outime_topn_everyday \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_outime_topn_everyday/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```

### 访客分析

回头访客统计-表格

```sql
-- 回头访客统计
drop table dw_user_returning_everyday;

create table dw_user_returning_everyday(
day string,
remote_addr string,
count_session string)
partitioned by (datestr string);

insert into table dw_user_returning_everyday partition(datestr='20181101')
select tmp.day,tmp.remote_addr,tmp.count_session
from
(select '20181101' as day,remote_addr,count(session) as count_session from ods_click_stream_visit group by 
remote_addr) tmp
where tmp.count_session>1;
select * from dw_user_returning_everyday;
```

单次访客统计-表格

```sql
--单次访客统计
drop table dw_user_noreturning_everyday;

create table dw_user_noreturning_everyday(
day string,
remote_addr string,
count_session string)
partitioned by (datestr string);

insert into table dw_user_noreturning_everyday partition(datestr='20181101')
select tmp.day,tmp.remote_addr,tmp.count_session
from
(select '20181101' as day,remote_addr,count(session) as count_session from ods_click_stream_visit group by 
remote_addr) tmp
where tmp.count_session=1;

select * from dw_user_noreturning_everyday;
```

##### 18. 回头访客/单次访客占比分析 -饼 dw_user_returnrate_everyday

```sql
-- 回头访客/单次访客占比分析
drop table dw_user_returnrate_everyday;
create table dw_user_returnrate_everyday(
    od string,
    day string,
      string,
    count_noreturn string,
    return_rate string
)partitioned by (datestr string);

insert into table dw_user_returnrate_everyday partition(datestr='20181101')
select row_number() over() as od,'20181101' , * ,round((count_return/count_noreturn),2)*100 from 
(select
count(*) as count_return
from 
dw_user_returning_everyday) a
join
(select 
count(*) as count_noreturn
from
dw_user_noreturning_everyday) b ;

select * from dw_user_returnrate_everyday;	

create table dw_user_returnrate_everyday(
    od varchar(50) primary key,
    day varchar(50),
    count_return varchar(50),
    count_noreturn varchar(50),
    return_rate varchar(50)
);
--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_user_returnrate_everyday \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_user_returnrate_everyday/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```

#### 新老访客分析

```sql
-- 老访客表累计
drop table dw_user_dsct_history;

create table dw_user_dsct_history(
    day string,
    ip string,
    tag string
) 
partitioned by(datestr string);

一共有53个IP


insert into table dw_user_dsct_history partition(datestr='20181101')
select '20181101',remote_addr,'old'
from dw_click_stream_visit_detail group by remote_addr limit 18;


select ip from dw_user_dsct_history;
```



```sql
--当日新访客表
drop table dw_user_dsct_new;

create table dw_user_dsct_new(
    day string,
    ip string,
    tag string
) 
partitioned by(datestr string);

insert into table dw_user_dsct_new partition(datestr='20181101')
select '20181101',c.remote_addr, 'new' from(
select distinct a.remote_addr as remote_addr  from dw_click_stream_visit_detail a left join dw_user_dsct_history b on a.remote_addr=b.ip where b.ip is NULL)c;

select * from dw_user_dsct_new;
```

##### 19. 新老访客占比分析-饼 dw_user_newold_everyday

```sql
--新老访客占比分析---饼图

drop table dw_user_newold_everyday;

create table dw_user_newold_everyday(
    od string,
    day string,
    count_new_visit string,
	count_old_visit string,
    new_rate string,
    old_rate string
) 
partitioned by(datestr string);


insert into table dw_user_newold_everyday partition(datestr='20181101')
select row_number() over() as od,'20181101',m.count_old_visit as count_old_visit,n.count_new_visit as count_new_visit,
round(n.count_new_visit/(n.count_new_visit+m.count_old_visit),2)*100 as new_rate,
round(m.count_old_visit/(n.count_new_visit+m.count_old_visit),2)*100 as old_rate
from 
(select count(*) as count_old_visit 
from ( 
select * from dw_user_dsct_history  union all  select * from dw_user_dsct_new )c
where c.tag='old') m
join
(select count(*) as count_new_visit 
from ( 
select * from dw_user_dsct_history  union all  select * from dw_user_dsct_new )c
where c.tag='new') n;


select * from dw_user_newold_everyday;

create table dw_user_newold_everyday(
    od varchar(50) primary key,
    day varchar(50),
    count_new_visit varchar(50),
	count_old_visit varchar(50),
    new_rate varchar(50),
    old_rate varchar(50)
);
--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_user_newold_everyday \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_user_newold_everyday/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```



##### 20. 新访客进入页面topn-柱 dw_inpage_newuser_topn

```sql
--新访客进入页面top10
drop table dw_inpage_newuser_topn;

create table dw_inpage_newuser_topn(
    od string,
    day string,
	inpage string,
    count_inpage string
) 
partitioned by(datestr string);

insert into table dw_inpage_newuser_topn partition(datestr='20181101')
select row_number() over() as od,'20181101',a.inpage,count(*) as count_inpage
from dw_click_stream_visit_detail a inner join dw_user_dsct_new b on a.remote_addr=b.ip 
group by a.inpage
order by count_inpage desc ;

select * from dw_inpage_newuser_topn;

create table dw_inpage_newuser_topn(
    od varchar(50) primary key,
    day varchar(50),
	inpage varchar(50),
    count_inpage varchar(50)
);
--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_inpage_newuser_topn \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_inpage_newuser_topn/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```

##### 21. 新访客离开页面topn-柱 dw_outpage_newuser_topn

```sql
--新访客离开页面top10
drop table dw_outpage_newuser_topn;

create table dw_outpage_newuser_topn(
    od string,
    day string,
    outpage string,
    count_outpage string
) partitioned by(datestr string);

insert into table dw_outpage_newuser_topn partition(datestr='20181101')
select row_number() over() as od,'20181101',a.outpage,count(*) as count_outpage
from dw_click_stream_visit_detail a inner join dw_user_dsct_new b on a.remote_addr=b.ip 
group by a.outpage
order by count_outpage desc ;

select * from dw_outpage_newuser_topn;

create table dw_outpage_newuser_topn(
    od varchar(50) primary key,
    day varchar(50),
    outpage varchar(50),
    count_outpage varchar(50)
);
--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_outpage_newuser_topn \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_outpage_newuser_topn/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```

##### 22. 新访客访问来源topn-柱 dw_referer_newuser_topn

```sql
-- 新访客访问来源topn
drop table dw_referer_newuser_topn;

create table dw_referer_newuser_topn(
    od string,
    day string,
    http_referer string,
    count_referer string
) partitioned by(datestr string);

insert into table dw_referer_newuser_topn partition(datestr='20181101')
select 
row_number() over() as od,'20181101',a.http_referer as http_referer,count(*) as count_referer
from dw_weblog_detail a inner join dw_user_dsct_new b on a.remote_addr=b.ip
group by a.http_referer
order by count_referer desc limit 10;

select * from dw_referer_newuser_topn;

create table dw_referer_newuser_topn(
    od varchar(50) primary key,
    day varchar(50),
    http_referer  varchar(50),
    count_referer  varchar(50)
);
--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_referer_newuser_topn \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_referer_newuser_topn/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```



##### 23. 老访客进入页面topn -柱 dw_inpage_olduser_topn

```sql
-- 老访客进入页面top10

drop table dw_inpage_olduser_topn;

create table dw_inpage_olduser_topn(
    od string,
    day string,
	inpage string,
    count_inpage string
) 
partitioned by(datestr string);

insert into table dw_inpage_olduser_topn partition(datestr='20181101')
select row_number() over() as od,'20181101',a.inpage,count(*) as count_inpage
from dw_click_stream_visit_detail a inner join dw_user_dsct_history b on a.remote_addr=b.ip 
group by a.inpage
order by count_inpage desc ;

select * from dw_inpage_olduser_topn;

create table dw_inpage_olduser_topn(
    od varchar(50) primary key,
    day varchar(50),
	inpage varchar(50),
    count_inpage varchar(50)
);

--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_inpage_olduser_topn \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_inpage_olduser_topn/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```

##### 24. 老访客离开页面topn-柱 dw_outpage_olduser_topn

```sql
--老访客离开页面top10
drop table dw_outpage_olduser_topn;

create table dw_outpage_olduser_topn(
    od string ,
    day string,
    outpage string,
    count_outpage string
)partitioned by(datestr string);

insert into table dw_outpage_olduser_topn partition(datestr='20181101')
select  row_number() over() as od,'20181101',a.outpage,count(*) as count_outpage
from dw_click_stream_visit_detail a inner join dw_user_dsct_history b on a.remote_addr=b.ip 
group by a.outpage
order by count_outpage desc ;

select * from dw_outpage_olduser_topn;

create table dw_outpage_olduser_topn(
    od varchar(50) primary key,
    day varchar(50),
    outpage varchar(50),
    count_outpage varchar(50)
);
--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_outpage_olduser_topn \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_outpage_olduser_topn/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```

##### 25. 老访客访问来源topn- 柱 dw_referer_olduser_topn

```sql
-- 老访客访问来源topn
drop table dw_referer_olduser_topn;

create table dw_referer_olduser_topn(
    od string,
    day string,
    http_referer string,
    count_referer string
) partitioned by(datestr string);

insert into table dw_referer_olduser_topn partition(datestr='20181101')
select 
row_number() over() as od,'20181101',a.http_referer as http_referer,count(*) as count_referer
from dw_weblog_detail a inner join dw_user_dsct_history b on a.remote_addr=b.ip
group by a.http_referer
order by count_referer desc limit 10;

select * from dw_referer_olduser_topn;

create table dw_referer_olduser_topn(
    od varchar(50) primary key,
    day varchar(50),
    http_referer varchar(50),
    count_referer varchar(50)
);
--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_referer_olduser_topn \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_referer_olduser_topn/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```

-----地图------

```sql
create table dw_ip_location_everyday(
    od string,
    day string,
    ip string
)partitioned by(datestr string);



create table dw_ip_location_everyday(
	od varchar(50),
	day varchar(50),
	ip varchar(50) primary key,
    
)
insert into table dw_ip_location_everyday partition(datestr='20181101')
select 
row_number() over() as od , '20181101' as day ,remote_addr as ip
from dw_weblog_detail 
group by remote_addr;
--导出
bin/sqoop export \
--connect jdbc:mysql://slave2:3306/itheima \
--username root \
--password 123456 \
--table dw_ip_location_everyday \
--export-dir /user/hive_remote/warehouse/itheima.db/dw_ip_location_everyday/datestr=20181101/000000_0 \
--input-fields-terminated-by "\001" \
--num-mappers 1
```





```
//     [{
//         name: "北京",
//         value: 100
//     },
//     {
//         name: "天津",
//         value: 0
//     },
//     {
//         name: "河北",
//         value: 97
//     },
//     {
//         name: "山西",
//         value: 36
//     },
//     {
//         name: "内蒙古",
//         value: 18
//     },
//     {
//         name: "辽宁",
//         value: 94
//     },
//     {
//         name: "吉林",
//         value: 46
//     },
//     {
//         name: "黑龙江",
//         value: 35
//     },
//     {
//         name: "上海",
//         value: 3234
//     },
//     {
//         name: "江苏",
//         value: 2286
//     },
//     {
//         name: "浙江",
//         value: 1096
//     },
//     {
//         name: "安徽",
//         value: 488
//     },
//     {
//         name: "福建",
//         value: 521
//     },
//     {
//         name: "江西",
//         value: 333
//     },
//     {
//         name: "山东",
//         value: 444
//     },
//     {
//         name: "河南",
//         value: 196
//     },
//     {
//         name: "湖北",
//         value: 1687
//     },
//     {
//         name: "湖南",
//         value: 423
//     },
//     {
//         name: "重庆",
//         value: 396
//     },
//     {
//         name: "四川",
//         value: 973
//     },
//     {
//         name: "贵州",
//         value: 44
//     },
//     {
//         name: "云南",
//         value: 221
//     },
//     {
//         name: "西藏",
//         value: 2
//     },
//     {
//         name: "陕西",
//         value: 582
//     },
//     {
//         name: "甘肃",
//         value: 21
//     },
//     {
//         name: "青海",
//         value: 12
//     },
//     {
//         name: "宁夏",
//         value: 15
//     },
//     {
//         name: "新疆",
//         value: 24
//     },
//     {
//         name: "广东",
//         value: 5611
//     },
//     {
//         name: "广西",
//         value: 13
//     },
//     {
//         name: "海南",
//         value: 1
//     },
// ];
//
// var geoCoordMap = {};
// var toolTipData = [{
//         name: "北京",
//         value: [{
//             name: "职位",
//             value: 1709
//         }]
//     },
//     {
//         name: "天津",
//         value: [{
//             name: "职位",
//             value: 0
//         }]
//     },
//     {
//         name: "河北",
//         value: [{
//             name: "职位",
//             value: 97
//         }]
//     },
//     {
//         name: "山西",
//         value: [{
//             name: "职位",
//             value: 36
//         }]
//     },
//     {
//         name: "内蒙古",
//         value: [{
//             name: "职位",
//             value: 18
//         }]
//     },
//     {
//         name: "辽宁",
//         value: [{
//             name: "职位",
//             value: 94
//         }]
//     },
//     {
//         name: "吉林",
//         value: [{
//             name: "职位",
//             value: 45
//         }]
//     },
//     {
//         name: "黑龙江",
//         value: [{
//             name: "职位",
//             value: 35
//         }]
//     },
//     {
//         name: "上海",
//         value: [{
//             name: "职位",
//             value: 3234
//         }]
//     },
//     {
//         name: "江苏",
//         value: [{
//             name: "职位",
//             value: 2286
//         }]
//     },
//     {
//         name: "浙江",
//         value: [{
//             name: "职位",
//             value: 1096
//         }]
//     },
//     {
//         name: "安徽",
//         value: [{
//             name: "职位",
//             value: 477
//         }]
//     },
//     {
//         name: "福建",
//         value: [{
//             name: "职位",
//             value: 521
//         }]
//     },
//     {
//         name: "江西",
//         value: [{
//             name: "职位",
//             value: 187
//         }]
//     },
//     {
//         name: "山东",
//         value: [{
//             name: "职位",
//             value: 444
//         }]
//     },
//     {
//         name: "河南",
//         value: [{
//             name: "职位",
//             value: 196
//         }]
//     },
//     {
//         name: "湖北",
//         value: [{
//             name: "职位",
//             value: 1687
//         }]
//     },
//     {
//         name: "湖南",
//         value: [{
//             name: "职位",
//             value: 423
//         }]
//     },
//     {
//         name: "重庆",
//         value: [{
//             name: "职位",
//             value: 396
//         }]
//     },
//     {
//         name: "四川",
//         value: [{
//             name: "职位",
//             value: 973
//         }]
//     },
//     {
//         name: "贵州",
//         value: [{
//             name: "职位",
//             value: 44
//         }]
//     },
//     {
//         name: "云南",
//         value: [{
//             name: "职位",
//             value: 221
//         }]
//     },
//     {
//         name: "西藏",
//         value: [{
//             name: "职位",
//             value: 2
//         }]
//     },
//     {
//         name: "陕西",
//         value: [{
//             name: "职位",
//             value: 582
//         }]
//     },
//     {
//         name: "甘肃",
//         value: [{
//             name: "职位",
//             value: 31
//         }]
//     },
//     {
//         name: "青海",
//         value: [{
//             name: "职位",
//             value: 12
//         }]
//     },
//     {
//         name: "宁夏",
//         value: [{
//             name: "职位",
//             value: 15
//         }]
//     },
//     {
//         name: "新疆",
//         value: [{
//             name: "职位",
//             value: 24
//         }]
//     },
//     {
//         name: "广东",
//         value: [{
//             name: "职位",
//             value: 5611
//         }]
//     },
//     {
//         name: "广西",
//         value: [{
//             name: "职位",
//             value: 133
//         }]
//     },
//     {
//         name: "海南",
//         value: [{
//             name: "职位",
//             value: 1
//         }]
```
