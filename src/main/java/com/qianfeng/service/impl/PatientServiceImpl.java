package com.qianfeng.service.impl;

import com.qianfeng.dao.PatientDao;
import com.qianfeng.pojo.*;
import com.qianfeng.service.patientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

/**
 * 业务层，完成前端的某个业务
 */
@Service
public class PatientServiceImpl implements patientService {

    @Autowired
    PatientDao patientDao;
    /**
     * 获取全国统计后的各省份的患者人数
     */
    @Override
    public List<PatientCountByProvince> queryAll() {
        return patientDao.queryAll();
    }

    @Override
    public List<Patient> queryByDistrict(String city) {
        return patientDao.queryByDistrict(city);
    }

    @Override
    public List<PatientCountByCity> queryByCity(String province) {
        return patientDao.queryByCity(province);
    }

    @Override
    public List<TimeCountByCity> queryByTime(String city) {
        List<TimeCountByCity> list=new ArrayList<>();
        for(int i=-7;i<0;i++) {
            String day=getDayAgo(i);
            HashMap map=new HashMap();
            map.put("time",day);
            map.put("city",city);
            System.out.println(day);
            List<TimeCountByCity> timeCountByCities = patientDao.queryByTime(map);
            list.add(timeCountByCities.get(0));
        }

        return list;
    }

    @Override
    public List<CountChange> queryChange(String city) {
        return patientDao.queryChange(city);
    }

    public String getDayAgo(int num){
        Calendar calendar1 = Calendar.getInstance();
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
        calendar1.add(Calendar.DATE, num);
        return sdf1.format(calendar1.getTime());
    }


}
