package com.myservlet;

import com.utils.DBHelper;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "GetAdInfoServlet",urlPatterns = "/GetAdInfoServlet")
public class GetAdInfoServlet extends HttpServlet {

    public void init(ServletConfig config)throws ServletException{
        super.init(config);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        List<String> infomations = new ArrayList<String>();
        String info = "";
        Connection con;
        PreparedStatement sql;
        ResultSet rs;

        try{
            con = DBHelper.getConnection();
            sql = con.prepareStatement("SELECT Memail,Mbirth,Mtel,Meducation FROM manager WHERE Mid = 15001 ");
            rs = sql.executeQuery();
            ResultSetMetaData metaData = rs.getMetaData();
            rs.beforeFirst();
            rs.next();
            info = rs.getString(1)+","+rs.getString(2)+","+rs.getString(3)+","+rs.getString(4);
//            infomations.add(rs.getString(1));
//            infomations.add(rs.getString(2));
//            infomations.add(rs.getString(3));
//            infomations.add(rs.getString(4));System.out.print(infomations.get(1));
        }
        catch (Exception e){
            e.printStackTrace();
        }
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        out.write(info);
    }
}
