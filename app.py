import requests
from flask import Flask, render_template, request, redirect, url_for, session, make_response
import os
import pymysql
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__, template_folder='template', static_folder='resource', static_url_path='/')

# SECRET_KEY 启用Session必须配置
app.config['SECRET_KEY'] = os.urandom(24)  # 生成随机数种子，用于产生SessionID

pymysql.install_as_MySQLdb()
# 使用集成方法处理SQLAlchemy
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:123456@192.168.23.144:3306/itheima?charset=utf8'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
# 实例化db对象
db = SQLAlchemy(app)

from sqlalchemy import Table, func
from common.database import dbconnect

dbsession, md, DBase = dbconnect()


#1
class db0(DBase):
    __table__ = Table('single_index_everyday', md, autoload=True)
    def find_single_index_everyday(self):
        list_time_leaverate=[]
        result = dbsession.query(db0).all()
        for i in range(len(result)):
            list_time_leaverate.append({'avg_access_time':result[i].avg_access_time+'(s)','leave_rate':result[i].leave_rate+'%'})
        return list_time_leaverate
#2-index_traffic
class db(DBase):
    __table__ = Table('dw_pvs_everyhour_oneday', md, autoload=True)
    def find_dw_pvs_everyhour_oneday(self):
        list_hour_pvs=[]
        result = dbsession.query(db).order_by(db.hour.asc()).all()
        for i in range(len(result)):
            list_hour_pvs.append({'hour':result[i].hour,'pvs':result[i].pvs})
        return list_hour_pvs
    def find_dw_pvs_everyhour_oneday_i(self):
        list_hour_pvs=[]
        result = dbsession.query(db).order_by(db.pvs.desc()).limit(5).all()
        for i in range(len(result)):
            list_hour_pvs.append({'hour':result[i].hour,'pvs':result[i].pvs})
        return list_hour_pvs
#3
class db3(DBase):
    __table__ = Table('dw_uvs_everyhour_oneday', md, autoload=True)
    def find_dw_uvs_everyhour_oneday(self):
        list_hour_uvs=[]
        result = dbsession.query(db3).order_by(db3.hour).all()
        for i in range(len(result)):
            list_hour_uvs.append({'hour':result[i].hour,'uvs':result[i].uvs})
        # print(list_hour_uvs)
        return list_hour_uvs
#4
class db4(DBase):
    __table__ = Table('dw_vvs_everyhour_oneday', md, autoload=True)
    def find_dw_vvs_everyhour_oneday(self):
        list_hour_vvs=[]
        result = dbsession.query(db4).order_by(db4.hour).all()
        for i in range(len(result)):
            list_hour_vvs.append({'hour':result[i].hour,'vvs':result[i].vvs})
        # print(list_hour_vvs)
        return list_hour_vvs


#7
class db7(DBase):
    __table__ = Table('dw_avgpv_user_everyhour_oneday', md, autoload=True)
    def find_dw_avgpv_user_everyhour_oneday(self):
        list_hour_vvs=[]
        result = dbsession.query(db7).order_by(db7.hour).limit(10).all()
        for i in range(len(result)):
            list_hour_vvs.append({'hour':result[i].hour,'avgpv':result[i].avgpv})
        # print(list_hour_vvs)
        return list_hour_vvs
#8
class db8(DBase):
    __table__ = Table('dw_avgsessions_user_everyhour_oneday', md, autoload=True)
    def find_dw_avgsessions_user_everyhour_oneday(self):
        list_hour_vvs=[]
        result = dbsession.query(db8).order_by(db8.avgsessions).limit(10).all()
        for i in range(len(result)):
            list_hour_vvs.append({'hour':result[i].hour,'avgsessions':result[i].avgsessions})
        # print(list_hour_vvs)
        return list_hour_vvs
#9
class db9(DBase):
    __table__ = Table('dw_avgpvs_session_everyhour_oneday', md, autoload=True)
    def find_dw_avgpvs_session_everyhour_oneday(self):
        list_hour_vvs=[]
        result = dbsession.query(db9).order_by(db9.avgpvs).limit(10).all()
        for i in range(len(result)):
            list_hour_vvs.append({'hour':result[i].hour,'avgpvs':result[i].avgpvs})
        # print(list_hour_vvs)
        return list_hour_vvs
#10
class db10(DBase):
    __table__ = Table('dw_pvs_referer_url_everyday', md, autoload=True)
    def find_dw_pvs_referer_url_everyday(self):
        list_referhost_cnts=[]
        result = dbsession.query(db10).order_by(db10.ref_url_cnts).all()
        for i in range(len(result)):
            list_referhost_cnts.append({'ref_url':result[i].ref_url,'ref_url_cnts':result[i].ref_url_cnts})
        return list_referhost_cnts
#11
class db11(DBase):
    __table__ = Table('dw_pvs_refererhost_everyday', md, autoload=True)
    def find_dw_pvs_refererhost_everyday(self):
        list_referhost_cnts=[]
        result = dbsession.query(db11).order_by(db11.ref_host_cnts).all()
        for i in range(len(result)):
            list_referhost_cnts.append({'referhost':'"'+result[i].ref_host+'"','cnts':result[i].ref_host_cnts})
        return list_referhost_cnts
#12
class db12(DBase):
    __table__ = Table('dw_inpage_topn_everyday', md, autoload=True)
    def find_dw_inpage_topn_everyday(self):
        list_inpage_cnts=[]
        result = dbsession.query(db12).order_by(db12.count_inpage.desc()).all()
        for i in range(len(result)):
            list_inpage_cnts.append({'inpage':'"'+result[i].inpage+'"','cnts':result[i].count_inpage})
        return list_inpage_cnts
#15
class db15(DBase):
    __table__ = Table('dw_page_stayshortest_topn_everyday', md, autoload=True)
    def find_dw_page_stayshortest_topn_everyday(self):
        list_inpage_cnts=[]
        result = dbsession.query(db15).order_by(db15.count_request.asc()).limit(8).all()
        for i in range(len(result)):
            list_inpage_cnts.append({'request':'"'+result[i].request+'"','count_request':result[i].count_request})
        return list_inpage_cnts
#16
class db16(DBase):
    __table__ = Table('dw_inime_topn_everyday', md, autoload=True)
    def find_dw_inime_topn_everyday(self):
        list_inpage_cnts=[]
        result = dbsession.query(db16).order_by(db16.count_intime.desc()).all()
        for i in range(len(result)):
            list_inpage_cnts.append({'intime_hour':result[i].intime_hour,'count_intime':result[i].count_intime})
        print(list_inpage_cnts)
        return list_inpage_cnts
#17
class db17(DBase):
    __table__ = Table('dw_outime_topn_everyday', md, autoload=True)
    def find_dw_outime_topn_everyday(self):
        list_inpage_cnts=[]
        result = dbsession.query(db17).order_by(db17.count_outtime.desc()).all()
        for i in range(len(result)):
            list_inpage_cnts.append({'outtime_hour':result[i].outtime_hour,'count_outtime':result[i].count_outtime})
        print(list_inpage_cnts)
        return list_inpage_cnts
#18
class db18(DBase):
    __table__ = Table('dw_user_returnrate_everyday', md, autoload=True)
    def find_dw_user_returnrate_everyday(self):
        list_inpage_cnts=[]
        result = dbsession.query(db18).all()
        for i in range(len(result)):
            list_inpage_cnts.append({'count_return':result[i].count_return,'count_noreturn':result[i].count_noreturn})
        return list_inpage_cnts
#19
class db19(DBase):
    __table__ = Table('dw_user_newold_everyday', md, autoload=True)
    def find_dw_user_newold_everyday(self):
        list_inpage_cnts=[]
        result = dbsession.query(db19).all()
        for i in range(len(result)):
            list_inpage_cnts.append({'count_old_visit':result[i].count_old_visit,'count_new_visit':result[i].count_new_visit})
        return list_inpage_cnts
#20
class db20(DBase):
    __table__ = Table('dw_inpage_newuser_topn', md, autoload=True)
    def find_dw_inpage_newuser_topn(self):
        list_inpage_cnts=[]
        result = dbsession.query(db20).order_by(db20.count_inpage).limit(10).all()
        for i in range(len(result)):
            list_inpage_cnts.append({'inpage':'"'+result[i].inpage+'"','count_inpage':result[i].count_inpage})
        return list_inpage_cnts
#21
class db21(DBase):
    __table__ = Table('dw_outpage_newuser_topn', md, autoload=True)
    def find_dw_outpage_newuser_topn(self):
        list_inpage_cnts=[]
        result = dbsession.query(db21).order_by(db21.count_outpage).limit(10).all()
        for i in range(len(result)):
            list_inpage_cnts.append({'outpage':'"'+result[i].outpage+'"','count_outpage':result[i].count_outpage})
        return list_inpage_cnts
#22
class db22(DBase):
    __table__ = Table('dw_referer_newuser_topn', md, autoload=True)
    def find_dw_referer_newuser_topn(self):
        list_inpage_cnts=[]
        result = dbsession.query(db22).order_by(db22.count_referer).limit(10).all()
        for i in range(len(result)):
            list_inpage_cnts.append({'http_referer':result[i].http_referer,'count_referer':result[i].count_referer})
        return list_inpage_cnts
#25
class db25(DBase):
    __table__ = Table('dw_referer_olduser_topn', md, autoload=True)
    def find_dw_referer_olduser_topn(self):
        list_inpage_cnts=[]
        result = dbsession.query(db25).order_by(db25.count_referer).limit(10).all()
        for i in range(len(result)):
            list_inpage_cnts.append({'http_referer':result[i].http_referer,'count_referer':result[i].count_referer})
        return list_inpage_cnts
class db_ip(DBase):
    __table__ = Table('dw_ip_location_everyday', md, autoload=True)

    def find_dw_ip_location_everyday(self):
        result = dbsession.query(db_ip.ip).all()
        list_ip = []
        for item in result:
            list_ip.append(item[0])
        return list_ip
from ip2Region import Ip2Region
db_file = 'ip2region.db'
def ip_search(ip):
    searcher = Ip2Region(db_file)  # 实例化
    searcher.isip(ip)
    data = searcher.memorySearch(ip)  # 内存
    dict={}
    dict.update({'ip':ip,'country':data['region'].decode('utf-8').split("|")[0],'province':data['region'].decode('utf-8').split("|")[2][:-1]})
    searcher.close()
    return dict




@app.route('/')
def home(self=None):

    #地图-解析ip地址
    list_ip = db_ip.find_dw_ip_location_everyday(self)
    list_location_data=[]
    for item in list_ip:
        loc=ip_search(item)
        # print('loc',loc)
        # if loc['country']!='中国' or loc['province']=='台湾':
        if loc['country'] != '中国':
            continue
        list_location_data.append(loc)
    dict2map=[]
    temp_dict2map={}
    list_province=[]
    for item in list_location_data:
        list_province.append(item['province'])
    for item in list_province:
        temp_dict2map.update({item:list_province.count(item)})
    list_key=[]
    list_value=[]
    for item in temp_dict2map.keys():
        list_key.append(item)
    for item in temp_dict2map.values():
        list_value.append(item)

    for i in range(len(list_key)):
        dict2map.append({'name':"'"+list_key[i]+"'",'value':list_value[i]})
    #1
    list_single_index_everyday= db0.find_single_index_everyday(self)
    # 2
    list_pvs_everyhour_oneday_i = db.find_dw_pvs_everyhour_oneday_i(self)
    print(list_pvs_everyhour_oneday_i)
    sum=0
    percent_2=[]
    for item in list_pvs_everyhour_oneday_i:
        sum=sum+int(item['pvs'])
    for i in range(len(list_pvs_everyhour_oneday_i)):
        percent_2.append( round(int(list_pvs_everyhour_oneday_i[i]['pvs'])/sum,4)*100  )

    # 3
    list_uvs_everyhour_oneday = db3.find_dw_uvs_everyhour_oneday(self)
    # 4
    list_vvs_everyhour_oneday = db4.find_dw_vvs_everyhour_oneday(self)
    # 7
    list_avgpv_user_everyhour_oneday = db7.find_dw_avgpv_user_everyhour_oneday(self)
    #11
    list_dw_pvs_refererhost_everyday=db11.find_dw_pvs_refererhost_everyday(self)
    #12
    list_dw_inpage_topn_everyday=db12.find_dw_inpage_topn_everyday(self)
    #18
    list_user_returnrate_everyday=db18.find_dw_user_returnrate_everyday(self)
    #19
    list_user_newold_everyday=db19.find_dw_user_newold_everyday(self)
    return render_template('index.html',dict2map=dict2map,list_pvs_everyhour_oneday_i=list_pvs_everyhour_oneday_i,percent_2=percent_2,
                           list_dw_pvs_refererhost_everyday=list_dw_pvs_refererhost_everyday,
                           list_dw_inpage_topn_everyday=list_dw_inpage_topn_everyday,
                           list_single_index_everyday=list_single_index_everyday,
                           list_uvs_everyhour_oneday=list_uvs_everyhour_oneday,
                           list_vvs_everyhour_oneday=list_vvs_everyhour_oneday,
                           list_avgpv_user_everyhour_oneday=list_avgpv_user_everyhour_oneday,
                           list_user_newold_everyday=list_user_newold_everyday,
                           list_user_returnrate_everyday=list_user_returnrate_everyday)

@app.route('/index_traffic')
def home_traffic(self=None):

    #地图-解析ip地址
    list_ip = db_ip.find_dw_ip_location_everyday(self)
    list_location_data=[]
    for item in list_ip:
        loc=ip_search(item)
        # print('loc',loc)
        # if loc['country']!='中国' or loc['province']=='台湾':
        if loc['country'] != '中国':
            continue
        list_location_data.append(loc)
    dict2map=[]
    temp_dict2map={}
    list_province=[]
    for item in list_location_data:
        list_province.append(item['province'])
    for item in list_province:
        temp_dict2map.update({item:list_province.count(item)})
    list_key=[]
    list_value=[]
    for item in temp_dict2map.keys():
        list_key.append(item)
    for item in temp_dict2map.values():
        list_value.append(item)

    for i in range(len(list_key)):
        dict2map.append({'name':"'"+list_key[i]+"'",'value':list_value[i]})
    #1
    list_single_index_everyday= db0.find_single_index_everyday(self)
    # 2
    list_pvs_everyhour_oneday = db.find_dw_pvs_everyhour_oneday(self)
    sum=0
    percent_2=[]
    for item in list_pvs_everyhour_oneday:
        sum=sum+int(item['pvs'])
    for i in range(len(list_pvs_everyhour_oneday)):
        percent_2.append( round(int(list_pvs_everyhour_oneday[i]['pvs'])/sum,3)*100  )

    # 3
    list_uvs_everyhour_oneday = db3.find_dw_uvs_everyhour_oneday(self)
    # 4
    list_vvs_everyhour_oneday = db4.find_dw_vvs_everyhour_oneday(self)
    # 7
    list_avgpv_user_everyhour_oneday = db7.find_dw_avgpv_user_everyhour_oneday(self)
    # 8
    list_avgsessions_user_everyhour_oneday = db8.find_dw_avgsessions_user_everyhour_oneday(self)
    # 9
    list_avgpvs_session_everyhour_oneday = db9.find_dw_avgpvs_session_everyhour_oneday(self)

    #11
    list_dw_pvs_refererhost_everyday=db11.find_dw_pvs_refererhost_everyday(self)
    #12
    list_dw_inpage_topn_everyday=db12.find_dw_inpage_topn_everyday(self)

    #18
    list_user_returnrate_everyday=db18.find_dw_user_returnrate_everyday(self)
    #19
    list_user_newold_everyday=db19.find_dw_user_newold_everyday(self)


    return render_template('index_traffic.html',dict2map=dict2map,list_pvs_everyhour_oneday=list_pvs_everyhour_oneday ,percent_2=percent_2,
                           list_dw_pvs_refererhost_everyday=list_dw_pvs_refererhost_everyday,
                           list_dw_inpage_topn_everyday=list_dw_inpage_topn_everyday,
                           list_single_index_everyday=list_single_index_everyday,
                           list_uvs_everyhour_oneday=list_uvs_everyhour_oneday,
                           list_vvs_everyhour_oneday=list_vvs_everyhour_oneday,
                           list_avgpv_user_everyhour_oneday=list_avgpv_user_everyhour_oneday,
                           list_user_newold_everyday=list_user_newold_everyday,
                           list_user_returnrate_everyday=list_user_returnrate_everyday,#7
                           list_avgsessions_user_everyhour_oneday=list_avgsessions_user_everyhour_oneday,#8
                           list_avgpvs_session_everyhour_oneday=list_avgpvs_session_everyhour_oneday,#9
                           )
@app.route('/index_beVisited')
def home_beVisited(self=None):

    #地图-解析ip地址
    list_ip = db_ip.find_dw_ip_location_everyday(self)
    list_location_data=[]
    for item in list_ip:
        loc=ip_search(item)
        if loc['country'] != '中国':
            continue
        list_location_data.append(loc)
    dict2map=[]
    temp_dict2map={}
    list_province=[]
    for item in list_location_data:
        list_province.append(item['province'])
    for item in list_province:
        temp_dict2map.update({item:list_province.count(item)})
    list_key=[]
    list_value=[]
    for item in temp_dict2map.keys():
        list_key.append(item)
    for item in temp_dict2map.values():
        list_value.append(item)

    for i in range(len(list_key)):
        dict2map.append({'name':"'"+list_key[i]+"'",'value':list_value[i]})
    #1
    list_single_index_everyday= db0.find_single_index_everyday(self)
    # 2
    list_pvs_everyhour_oneday = db.find_dw_pvs_everyhour_oneday(self)
    sum=0
    percent_2=[]
    for item in list_pvs_everyhour_oneday:
        sum=sum+int(item['pvs'])
    for i in range(len(list_pvs_everyhour_oneday)):
        percent_2.append( round(int(list_pvs_everyhour_oneday[i]['pvs'])/sum,3)*100  )

    # 3
    list_uvs_everyhour_oneday = db3.find_dw_uvs_everyhour_oneday(self)
    # 4
    list_vvs_everyhour_oneday = db4.find_dw_vvs_everyhour_oneday(self)
    # 7
    list_avgpv_user_everyhour_oneday = db7.find_dw_avgpv_user_everyhour_oneday(self)
    # 8
    list_avgsessions_user_everyhour_oneday = db8.find_dw_avgsessions_user_everyhour_oneday(self)
    # 9
    list_avgpvs_session_everyhour_oneday = db9.find_dw_avgpvs_session_everyhour_oneday(self)

    #10
    list_pvs_referer_url_everyday=db10.find_dw_pvs_referer_url_everyday(self)
    #11
    list_dw_pvs_refererhost_everyday=db11.find_dw_pvs_refererhost_everyday(self)
    #12
    list_dw_inpage_topn_everyday=db12.find_dw_inpage_topn_everyday(self)
    #15
    list_page_stayshortest_topn_everyday=db15.find_dw_page_stayshortest_topn_everyday(self)
    #16
    list_dw_inime_topn_everyday=db16.find_dw_inime_topn_everyday(self)

    #17
    list_outime_topn_everyday=db17.find_dw_outime_topn_everyday(self)
    #18
    list_user_returnrate_everyday=db18.find_dw_user_returnrate_everyday(self)
    #19
    list_user_newold_everyday=db19.find_dw_user_newold_everyday(self)


    return render_template('index_beVisited.html',dict2map=dict2map,list_pvs_everyhour_oneday=list_pvs_everyhour_oneday ,percent_2=percent_2,
                           list_dw_pvs_refererhost_everyday=list_dw_pvs_refererhost_everyday,
                           list_dw_inpage_topn_everyday=list_dw_inpage_topn_everyday,#12
                           list_single_index_everyday=list_single_index_everyday,
                           list_uvs_everyhour_oneday=list_uvs_everyhour_oneday,
                           list_vvs_everyhour_oneday=list_vvs_everyhour_oneday,
                           list_avgpv_user_everyhour_oneday=list_avgpv_user_everyhour_oneday,
                           list_user_newold_everyday=list_user_newold_everyday,
                           list_user_returnrate_everyday=list_user_returnrate_everyday,#7
                           list_avgsessions_user_everyhour_oneday=list_avgsessions_user_everyhour_oneday,#8
                           list_avgpvs_session_everyhour_oneday=list_avgpvs_session_everyhour_oneday,#9
                           list_pvs_referer_url_everyday=list_pvs_referer_url_everyday,#10
                           list_page_stayshortest_topn_everyday=list_page_stayshortest_topn_everyday,#15
                           list_dw_inime_topn_everyday=list_dw_inime_topn_everyday,#16
                           list_outime_topn_everyday=list_outime_topn_everyday,#17
                           )
@app.route('/index_visitor')
def home_visitor(self=None):

    #地图-解析ip地址
    list_ip = db_ip.find_dw_ip_location_everyday(self)
    list_location_data=[]
    for item in list_ip:
        loc=ip_search(item)
        # print('loc',loc)
        # if loc['country']!='中国' or loc['province']=='台湾':
        if loc['country'] != '中国':
            continue
        list_location_data.append(loc)
    dict2map=[]
    temp_dict2map={}
    list_province=[]
    for item in list_location_data:
        list_province.append(item['province'])
    for item in list_province:
        temp_dict2map.update({item:list_province.count(item)})
    list_key=[]
    list_value=[]
    for item in temp_dict2map.keys():
        list_key.append(item)
    for item in temp_dict2map.values():
        list_value.append(item)

    for i in range(len(list_key)):
        dict2map.append({'name':"'"+list_key[i]+"'",'value':list_value[i]})
    #1
    list_single_index_everyday= db0.find_single_index_everyday(self)
    # 2
    list_pvs_everyhour_oneday = db.find_dw_pvs_everyhour_oneday(self)
    # 3
    list_uvs_everyhour_oneday = db3.find_dw_uvs_everyhour_oneday(self)
    # 4
    list_vvs_everyhour_oneday = db4.find_dw_vvs_everyhour_oneday(self)
    # 7
    list_avgpv_user_everyhour_oneday = db7.find_dw_avgpv_user_everyhour_oneday(self)
    # 8
    list_avgsessions_user_everyhour_oneday = db8.find_dw_avgsessions_user_everyhour_oneday(self)
    # 9
    list_avgpvs_session_everyhour_oneday = db9.find_dw_avgpvs_session_everyhour_oneday(self)

    #10
    list_pvs_referer_url_everyday=db10.find_dw_pvs_referer_url_everyday(self)
    #11
    list_dw_pvs_refererhost_everyday=db11.find_dw_pvs_refererhost_everyday(self)
    #12
    list_dw_inpage_topn_everyday=db12.find_dw_inpage_topn_everyday(self)
    #15
    list_page_stayshortest_topn_everyday=db15.find_dw_page_stayshortest_topn_everyday(self)
    #16
    list_dw_inime_topn_everyday=db16.find_dw_inime_topn_everyday(self)

    #17
    list_outime_topn_everyday=db17.find_dw_outime_topn_everyday(self)
    #18
    list_user_returnrate_everyday=db18.find_dw_user_returnrate_everyday(self)
    #19
    list_user_newold_everyday=db19.find_dw_user_newold_everyday(self)
    #20
    list_inpage_newuser_topn=db20.find_dw_inpage_newuser_topn(self)
    #21
    list_outpage_newuser_topn=db21.find_dw_outpage_newuser_topn(self)
    #22
    list_referer_newuser_topn=db22.find_dw_referer_newuser_topn(self)
    #25
    list_referer_olduser_topn=db25.find_dw_referer_olduser_topn(self)


    return render_template('index_visitor.html',dict2map=dict2map,

                           list_pvs_everyhour_oneday=list_pvs_everyhour_oneday ,
                           list_dw_pvs_refererhost_everyday=list_dw_pvs_refererhost_everyday,
                           list_dw_inpage_topn_everyday=list_dw_inpage_topn_everyday,#12
                           list_single_index_everyday=list_single_index_everyday,
                           list_uvs_everyhour_oneday=list_uvs_everyhour_oneday,
                           list_vvs_everyhour_oneday=list_vvs_everyhour_oneday,
                           list_avgpv_user_everyhour_oneday=list_avgpv_user_everyhour_oneday,
                           list_user_newold_everyday=list_user_newold_everyday,
                           list_user_returnrate_everyday=list_user_returnrate_everyday,#7
                           list_avgsessions_user_everyhour_oneday=list_avgsessions_user_everyhour_oneday,#8
                           list_avgpvs_session_everyhour_oneday=list_avgpvs_session_everyhour_oneday,#9
                           list_pvs_referer_url_everyday=list_pvs_referer_url_everyday,#10
                           list_page_stayshortest_topn_everyday=list_page_stayshortest_topn_everyday,#15
                           list_dw_inime_topn_everyday=list_dw_inime_topn_everyday,#16
                           list_outime_topn_everyday=list_outime_topn_everyday,#17
                           list_inpage_newuser_topn=list_inpage_newuser_topn,#20
                           list_outpage_newuser_topn=list_outpage_newuser_topn,#21
                           list_referer_newuser_topn=list_referer_newuser_topn,#22
                           list_referer_olduser_topn=list_referer_olduser_topn,#25
                           )


if __name__ == '__app__':

    app.run(debug=True)
