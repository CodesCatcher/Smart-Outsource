package com.dao;

import com.mybean.ProjectBean;
import com.utils.DBHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

public class AdProjectDao {
    public ProjectBean getAdproject(){

        Connection con;
        PreparedStatement sql ;
        ResultSet rs;
        ProjectBean projectBean = new ProjectBean();

        try{
            con = DBHelper.getConnection();
            sql = con.prepareStatement("SELECT Pname,Progress,TleaderName,Pstatus \n" +
                    "FROM projects,team \n" +
                    "WHERE PmanagerId = \"15001\" AND PteamId = Tid\n" +
                    "ORDER BY Pid DESC");
            rs = sql.executeQuery();
            ResultSetMetaData metaData = rs.getMetaData();
            int columnCount = metaData.getColumnCount();
            projectBean.setColumnNumber(columnCount);
            rs.last();
            int rowNumber = rs.getRow();
            projectBean.setRowNumber(rowNumber);
            String[][] projectRecord = new String[rowNumber][columnCount];
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
