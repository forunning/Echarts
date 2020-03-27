package com.qianfeng.service;

import com.qianfeng.pojo.*;

import java.util.List;

/**
 * 当前关于Patient完成的业务
 */
public interface patientService {

    /**
     * 获取全国统计后的各省份的患者人数
     */
    List<PatientCountByProvince> queryAll();

    /**
     * 查询指定省份的患者数据
     * @param province
     * @return
     */
    List<Patient> queryByDistrict(String city);

    List<PatientCountByCity> queryByCity(String province);

    List<TimeCountByCity> queryByTime(String city);

    List<CountChange> queryChange(String city);
}
