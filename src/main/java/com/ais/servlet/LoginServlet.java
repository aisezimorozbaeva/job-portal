package com.ais.servlet;

import com.ais.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String em = req.getParameter("email");
            String pass  = req.getParameter("password");
            User us = new User();
            HttpSession session = req.getSession();

            if ("admin@gmail.com".equals(em)&& "admin121".equals(pass)){
                session.setAttribute("userobj",us);
                us.setRole("admin");
                resp.sendRedirect("admin.jsp");
            }else {

            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
