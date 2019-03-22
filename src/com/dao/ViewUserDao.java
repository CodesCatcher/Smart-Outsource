package com.dao;

import com.mybean.ProjectBean;
import com.mybean.UserBean;
import com.utils.DBHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

public class ViewUserDao {
    public UserBean viewUser(){

        Connection con = null;
        PreparedStatement sql = null;
        ResultSet rs;
        UserBean userBean = new UserBean();

        try {
            con = DBHelper.getConnection();
            sql = con.prepareStatement("SELECT Uid,Uname,Usex,Uemail,(YEAR(NOW())-YEAR(Ubirth)),Utel,UteamId,UregTime FROM user ORDER BY Uid DESC ");
            rs = sql.executeQuery();
            ResultSetMetaData metaData = rs.getMetaData();
            int columnCount = metaData.getColumnCount();
            userBean.setColumnNumber(columnCount);
            String[] columnName = new String[columnCount];
            for (int i = 0;i<columnName.length;i++){
                columnName[i] = metaData.getColumnName(i+1);
            }
            userBean.setColumnName(columnName);
            rs.last();
            int rowNumer = rs.getRow();
            userBean.setRowNumber(rowNumer);
            String[][] userRecord = userBean.getUserRecord();
            userRecord = new String[rowNumer][columnCount];
            rs.beforeFirst();
            int i = 0;
            while (rs.next()){
                for (int k = 0;k<columnCount;k++){
                    userRecord[i][k] = rs.getString(k+1);
                }
                i++;
            }
            userBean.setUserRecord(userRecord);
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return userBean;
    }
}
