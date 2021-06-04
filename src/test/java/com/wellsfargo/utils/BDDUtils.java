package com.wellsfargo.utils;

public class BDDUtils {

    public static String getStaticMethod(){
        return "hello world";
    }

    public String getNonStaticMethod(){
        System.out.println("test");
        return "hello world from non static emthod";
    }
}
