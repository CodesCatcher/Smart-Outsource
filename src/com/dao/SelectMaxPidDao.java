package com.dao;

import com.utils.DBHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SelectMaxPidDao {
    public  static String selectMaxPid(){
        Connection con;
        PreparedStatement sql;
        ResultSet rs;
        String maxPid = "0";

        try{
            con = DBHelper.getConnection();
            sql = con.prepareStatement("SELECT MAX(Pid)+1 FROM projects ");
            rs = sql.executeQuery();
            rs.beforeFirst();
            rs.next();
            maxPid = rs.getString(1);
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return maxPid;
    }
}
