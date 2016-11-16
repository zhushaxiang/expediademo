package com.jfinal.regist;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by LIYU on 2016/11/16.
 */
public class RegistDatas {
    private static Map<String ,User> users = new HashMap<String ,User>();

    public static void addUsers(String id,User user) {
        users.put(id,user);
    }

    public static User getUserById(String id){
        return users.get(id);
    }
}
