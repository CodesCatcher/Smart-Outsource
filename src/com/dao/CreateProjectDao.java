package com.dao;

import com.utils.DBHelper;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class CreateProjectDao {
    public void createProject(List<String> informations){
        Connection con;
        PreparedStatement sql = null;
        ResultSet rs;
        String pid= "0" ;
        informations.add("15001");
        informations.add("notyet");
        informations.add("0");

        try{
            con = DBHelper.getConnection();
            sql = con.prepareStatement("INSERT INTO projects(Pname,PteamId,Psalary,PdeadLine,Ptype,PcreateTime,Ppath,PmanagerId,Pstatus,Progress)VALUE (?,?,?,?,?,?,?,?,?,?)");
            sql.setString(1,informations.get(0));
            sql.setString(2,informations.get(1));
            sql.setString(3,informations.get(2));
            sql.setString(4,informations.get(3));
            sql.setString(5,informations.get(4));
            sql.setString(6,informations.get(5));
            sql.setString(7,informations.get(6));
            sql.setString(8,informations.get(7));
            sql.setString(9,informations.get(8));
            sql.setString(10,informations.get(9));

            sql.executeUpdate();

            System.out.println(informations.get(0));
            sql = con.prepareStatement("SELECT Pid FROM projects WHERE PteamID ="+informations.get(2));System.out.println(2);
            rs = sql.executeQuery();
                    System.out.println(3);
            rs.beforeFirst();
            while (rs.next()){
                pid = rs.getString("Pid");
            }


//            String view = "CREATE OR REPLACE VIEW t"+ pid+ "p "
//                    +" AS "
//                    +" SELECT * "
//                    +" FROM projects "
//                    +" WHERE PteamId = "+ informations.get(2);
//
//            sql = con.prepareStatement(view);
//            sql.executeUpdate();


        }
        catch (Exception e){
            e.printStackTrace();
        }
    }
}
