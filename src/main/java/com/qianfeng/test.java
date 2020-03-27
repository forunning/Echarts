package com.qianfeng;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;


public class test {
    public static void main(String[] args) {

        for(int i=0;i<10;i++){
            System.out.println(getDayAgoOrAfterString(i));
        }
    }
    /**
     *
     * @param num ﹣3 三天前 +3 三天后
     * @return
     */
    public static String getDayAgoOrAfterString(int num){
        Calendar calendar1 = Calendar.getInstance();
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
        calendar1.add(Calendar.DATE, num);
        return sdf1.format(calendar1.getTime());
    }

}
