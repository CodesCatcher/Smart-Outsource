package com.utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBHelper {
    private static final String driver ="com.mysql.jdbc.Driver";
    private static final String url="jdbc:mysql://127.0.0.1/project?useUnicode=true&characterEncoding=utf-8";
    private static final String username="root";
    private static final String password="123456";
    private static Connection conn = null;

    static {
        try {
            Class.forName(driver);
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws Exception{
        if (conn == null){
            conn = DriverManager.getConnection(url, username, password);
            return conn;
        } else {
            return conn;
        }
    }
}
