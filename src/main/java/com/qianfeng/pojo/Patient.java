package com.qianfeng.pojo;//说明当前的类在哪个包下

import java.util.Date;  //导入外部资源

/**
 * 实体
 */
public class Patient {

    private int id;
    private String country;
    private String province;
    private String city;
    private String district;
    private String patient_name;
    private String patient_tel;
    private String patient_state;
    private Date create_info_datetime;
    private Date diagonse_datetime;
    private Date grave_datetime;
    private Date cure_datetime;
    private Date die_datetime;


    // alt + insert >>>>getter setter


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getPatient_name() {
        return patient_name;
    }

    public void setPatient_name(String patient_name) {
        this.patient_name = patient_name;
    }

    public String getPatient_tel() {
        return patient_tel;
    }

    public void setPatient_tel(String patient_tel) {
        this.patient_tel = patient_tel;
    }

    public String getPatient_state() {
        return patient_state;
    }

    public void setPatient_state(String patient_state) {
        this.patient_state = patient_state;
    }

    public Date getCreate_info_datetime() {
        return create_info_datetime;
    }

    public void setCreate_info_datetime(Date create_info_datetime) {
        this.create_info_datetime = create_info_datetime;
    }

    public Date getDiagonse_datetime() {
        return diagonse_datetime;
    }

    public void setDiagonse_datetime(Date diagonse_datetime) {
        this.diagonse_datetime = diagonse_datetime;
    }

    public Date getGrave_datetime() {
        return grave_datetime;
    }

    public void setGrave_datetime(Date grave_datetime) {
        this.grave_datetime = grave_datetime;
    }

    public Date getCure_datetime() {
        return cure_datetime;
    }

    public void setCure_datetime(Date cure_datetime) {
        this.cure_datetime = cure_datetime;
    }

    public Date getDie_datetime() {
        return die_datetime;
    }

    public void setDie_datetime(Date die_datetime) {
        this.die_datetime = die_datetime;
    }

}
