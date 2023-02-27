package com.ais.servlet;

import com.ais.dao.JobDao;
import com.ais.db.DBConnect;
import com.ais.entity.Jobs;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/add_jobs")
public class AddPostServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String title =req.getParameter("title");
            String location =req.getParameter("location");
            String category =req.getParameter("category");
            String status =req.getParameter("status");
            String desc =req.getParameter("desc");

            Jobs j = new Jobs();
            j.setTitle(title);
            j.setDescription(desc);
            j.setLocation(location);
            j.setStatus(status);
            j.setCategory(category);

            HttpSession session = req.getSession();

            JobDao dao = new JobDao(DBConnect.getConn());
            boolean f = dao.addJobs(j);
            if (f){
                session.setAttribute("succMsg","Job post successfully..");
                resp.sendRedirect("add_job.jsp");
            }else {
                session.setAttribute("succMsg","Something wrong on server");
                resp.sendRedirect("add_job.jsp");
            }

        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
