package com.myservlet;



import com.dao.AdProjectDao;
import com.mybean.ProjectBean;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "GetAdProjectServlet",urlPatterns = "/GetAdProjectServlet")
public class GetAdProjectServlet extends HttpServlet {
    public void init(ServletConfig config)throws ServletException{
        super.init(config);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        AdProjectDao adProjectDao = new AdProjectDao();
        ProjectBean projectBean = adProjectDao.getAdproject();
        request.getSession().setAttribute("adProjectBean",projectBean);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
