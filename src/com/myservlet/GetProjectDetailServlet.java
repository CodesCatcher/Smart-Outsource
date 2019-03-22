package com.myservlet;

import com.mybean.ProjectBean;
import com.utils.DBHelper;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import static java.lang.System.out;

@WebServlet(name = "GetProjectDetailServlet",urlPatterns = "/GetProjectDetailServlet")
public class GetProjectDetailServlet extends HttpServlet {
    public void init(ServletConfig config)throws ServletException{
        super.init(config);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String pid = request.getParameter("pid");/*System.out.println(pid);*/

        Connection con;
        PreparedStatement sql;
        ResultSet rs;
        ProjectBean projectBean = new ProjectBean();
        String detail = "";

        try{
            con = DBHelper.getConnection();
            sql = con.prepareStatement("SELECT Pid,Pname,PcreateTime,PdeadLine,Psalary,Tname,Progress,Ptype,Mname,Pstatus\n" +
                    "FROM projects,manager,team\n" +
                    "WHERE PteamId = Tid AND PmanagerId = Mid AND Pid = "+pid);
            rs = sql.executeQuery();
            ResultSetMetaData metaData = rs.getMetaData();
            rs.beforeFirst();
            rs.next();
            detail = rs.getString(1)+","+rs.getString(2)+","+rs.getString(3)+","+rs.getString(4)+","+rs.getString(5)+","+rs.getString(6)+","+rs.getString(7)+","+rs.getString(8)+","+rs.getString(9)+","+rs.getString(10);
/*            int columnCount = metaData.getColumnCount();
            projectBean.setColumnNumber(columnCount);
            rs.last();
            int rowNumber = rs.getRow();
            projectBean.setRowNumber(rowNumber);
            String[][] projectDetail = new String[rowNumber][columnCount];
            rs.beforeFirst();
            int i = 0;
            while (rs.next()){
                for (int k = 0;k<columnCount;k++){
                    projectDetail[i][k] = rs.getString(k+1);
                }
                i++;
            }
            projectBean.setProjectRecord(projectDetail);*/
        }
        catch (Exception e){
            e.printStackTrace();
        }
        /*request.getSession().setAttribute("projectDetail",projectBean);*/
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.write(detail);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
