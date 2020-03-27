package com.qianfeng.controller;

import com.qianfeng.pojo.Patient;
import com.qianfeng.pojo.PatientCountByCity;
import com.qianfeng.pojo.PatientCountByProvince;
import com.qianfeng.pojo.TimeCountByCity;
import com.qianfeng.service.patientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/PatientController")
public class PatientController {

    @Autowired
    patientService patientService;

    @RequestMapping("/queryStaticInfo")
    @ResponseBody
    public Map<String,Object> queryStaticInfo(){

        Map<String,Object> map = new HashMap<>();
        List<PatientCountByProvince> list = patientService.queryAll();
        map.put("list",list);

        return map;
    }

    @ResponseBody
    @RequestMapping("/queryByDistrict")
    public Map<String,Object> queryByDistrict(String city){
        Map<String,Object> map = new HashMap<>();
        List<Patient> list = patientService.queryByDistrict(city);
        map.put("list",list);
        return map;
    }

    @ResponseBody
    @RequestMapping("/queryByCity")
    public Map<String,Object> queryByCity(String province){
        Map<String,Object> map = new HashMap<>();
        List<PatientCountByCity> list = patientService.queryByCity(province);
        map.put("list",list);
        return map;
    }

    @ResponseBody
    @RequestMapping("/queryByTime")
    public  Map<String,Object> queryByTime(String city){
        Map<String,Object> map = new HashMap<>();
        List list = patientService.queryByTime(city);
        map.put("list",list);
        return map;
    }

    @ResponseBody
    @RequestMapping("/queryChange")
    public  Map<String,Object> queryChange(String city){
        Map<String,Object> map = new HashMap<>();
        List list = patientService.queryChange(city);
        map.put("list",list);
        return map;
    }
}
