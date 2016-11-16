package com.jfinal.weixin.regist;

import com.jfinal.core.Controller;
import com.jfinal.regist.RegistDatas;

/**
 * Created by LIYU on 2016/11/16.
 */
public class CleanRegistController extends Controller {

    public void index() {
        RegistDatas.cleanUsers();
        renderJson(String.valueOf("(\"success\")"));
    }
}
