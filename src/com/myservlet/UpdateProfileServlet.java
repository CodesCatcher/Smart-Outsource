package com.myservlet;

import com.utils.DBHelper;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet(name = "UpdateProfileServlet",urlPatterns = "/UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {
    public void init(ServletConfig config)throws ServletException{
        super.init(config);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String birth = request.getParameter("birth");
        String  mobile = request.getParameter("mobile");
        String email = request.getParameter("email");
        String wechat = request.getParameter("wechat");
        String education = request.getParameter("education");

        Connection con;
        PreparedStatement sql;
        ResultSet rs;

        try{
            con = DBHelper.getConnection();
            sql = con.prepareStatement("UPDATE manager SET Mbirth = ?,Mtel = ?,Memail = ?,Mwechat = ?,Meducation = ? " +
                    "WHERE Mid = 15001");
            sql.setString(1,birth);
            sql.setString(2,mobile);
            sql.setString(3,email);
            sql.setString(4,wechat);
            sql.setString(5,education);
            sql.executeUpdate();
        }
        catch (Exception e){
            e.printStackTrace();
        }
        response.sendRedirect("../manager_jsp/Administrator.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
