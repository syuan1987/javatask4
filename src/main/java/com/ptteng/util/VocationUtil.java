package com.ptteng.util;

/**
 * Created by litao on 2017/3/1.
 */
public class VocationUtil {

    public String vocationDirectionToStringWithType(int type){
        switch (type){
            case 1:{
                return "前端开发";
            }
            case 2:{
                return "后端开发";
            }
            case 3:{
                return "移动开发";
            }
            case 4:{
                return "整站开发";
            }
            case 5:{
                return "运营维护";
            }
            default:{
                return "其他";
            }
        }
    }
    public String vocationNameToStringWithType(int type){
        switch (type){
            case 1:{
                return "CSS";
            }
            case 2:{
                return "JS";
            }
            case 3:{
                return "ANDROID";
            }
            case 4:{
                return "IOS";
            }
            case 5:{
                return "JAVA";
            }
            case 6:{
                return "OP";
            }
            case 7:{
                return "PM";
            }
            case 8:{
                return "UI";
            }
            default:
                return "其他";
        }
    }
}
