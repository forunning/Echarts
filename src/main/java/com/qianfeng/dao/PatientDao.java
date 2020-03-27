package com.qianfeng.dao;

import com.qianfeng.pojo.*;

import java.util.HashMap;
import java.util.List;

/**
 * 所有关于Mapper文件的数据库操作
 * 核心：接口
 */
public interface PatientDao {

    /**
     * 用于操作：查询患者人数的sql
     * @return
     */
    List<PatientCountByProvince> queryAll();

    /**
     * 查询指定省份的患者数据
     * @param province
     * @return
     */
    List<Patient> queryByDistrict(String city);

    List<PatientCountByCity> queryByCity(String province);

    List<TimeCountByCity> queryByTime(HashMap map);

    List<CountChange> queryChange(String city);

}
