package com.dao;

import com.utils.DBHelper;
import com.mybean.ProjectBean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

public class ViewProjectDao {
    public ProjectBean viewProject(){

        Connection con;
        PreparedStatement sql = null;
        ResultSet rs;
        ProjectBean projectBean = new ProjectBean();

        try{
            con = DBHelper.getConnection();
            sql = con.prepareStatement("SELECT Pid,Pname,PcreateTime,Tname,Progress,Ptype,Mname,Pstatus\n" +
                    "FROM projects,team,manager\n" +
                    "WHERE PmanagerId=Mid AND PteamId = Tid\n" +
                    "ORDER BY Pid DESC");
            rs = sql.executeQuery();
            ResultSetMetaData metaData = rs.getMetaData();
            int columnCount = metaData.getColumnCount();
            projectBean.setColumnNumber(columnCount);
            String[] columnName = new String[columnCount];
            for (int i = 0;i<columnName.length;i++){
                columnName[i] = metaData.getColumnName(i+1);
            }
            projectBean.setColumnName(columnName);
            rs.last();
            int rowNumber = rs.getRow();
            projectBean.setRowNumber(rowNumber);
            String[][] projectRecord = projectBean.getProjectRecord();
            projectRecord = new String[rowNumber][columnCount];
            rs.beforeFirst();
            int i = 0;
            while (rs.next()){
                for (int k = 0;k<columnCount;k++){
                    projectRecord[i][k] = rs.getString(k+1);
                }
                i++;
            }
            projectBean.setProjectRecord(projectRecord);
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return projectBean;
    }
}
