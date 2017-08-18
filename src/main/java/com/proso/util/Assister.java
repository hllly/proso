package com.proso.util;

/**
 * Created by Administrator on 2016/2/18.
 */
public class Assister {
    public static boolean isEmptyOrNull(String value){
        if(value==null) return true;
        else if(value.length()==0) return true;
        else return false;
    }
}
