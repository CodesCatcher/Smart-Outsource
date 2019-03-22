package com.myservlet;

import com.dao.CreateProjectDao;
import com.dao.SelectMaxPidDao;
import com.utils.Upload;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet(name = "UploadServlet",urlPatterns = "/UploadServlet")
public class UploadServlet extends HttpServlet {
    public void init(ServletConfig config)throws ServletException{
        super.init(config);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setSizeThreshold(100*1024);

        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setHeaderEncoding("UTF-8");

        List<String> projectList = new ArrayList<String >();
        List<String> fileList = new ArrayList<String >();
        List<FileItem> list = null;

        String filename = null;
        String maxPid = SelectMaxPidDao.selectMaxPid();

        File file = new File("G:\\IdeaProjects\\smart_newjsp\\web\\ArcSoft\\"+maxPid);
        file.mkdirs();
        String resourceFile = maxPid;
        String savePath = null;
        File path = null;

        try {
            list = upload.parseRequest(request);
        }
        catch (Exception e){
            e.printStackTrace();
        }

        for (FileItem item : list){
            if (item.isFormField()){
                String value = item.getString("UTF-8");
                projectList.add(value);System.out.print(value);
                continue;
            }
            else {
                InputStream stream = item.getInputStream();
                filename = item.getName();

                savePath = getServletContext().getRealPath("/WEB-INF/ArcSoftResource/"+resourceFile);
                path = new File(savePath);System.out.println("1");
                fileList = Upload.uploadFile(stream,path,filename);System.out.println("2");
                if (filename == null || filename.trim().equals("")){
                    //判空处理
                }
                item.delete();
                continue;
            }
        }
/*        System.out.println(1);System.out.println("项目信息"+projectList);
        System.out.println(1);System.out.println("目录"+savePath);*/

        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        String nowDate = df.format(new Date());
        projectList.add(nowDate);
        projectList.add(savePath);

//        SimpleDateFormat sdf1 = new SimpleDateFormat("MM/dd/yyyy");
//
//        try {
//            Date date =  sdf1.parse(projectList.get(5));
//            SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
//            projectList.set(5,sdf2.format(date));
//        }
//        catch (Exception e){
//            e.printStackTrace();
//        }
        System.out.print(projectList);

        CreateProjectDao createProjectDao = new CreateProjectDao();
        createProjectDao.createProject(projectList);
        response.sendRedirect("../manager_jsp/Administrator.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
