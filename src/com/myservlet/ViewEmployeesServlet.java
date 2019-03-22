package com.myservlet;

import com.dao.ViewUserDao;
import com.mybean.UserBean;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ViewEmployeesServlet",urlPatterns = "/ViewEmployeesServlet")
public class ViewEmployeesServlet extends HttpServlet {
    public void  init(ServletConfig config)throws ServletException{
        super.init(config);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        ViewUserDao viewUserDao = new ViewUserDao();
        UserBean userBean = viewUserDao.viewUser();

        request.getSession().setAttribute("viewEmployeesBean", userBean);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
