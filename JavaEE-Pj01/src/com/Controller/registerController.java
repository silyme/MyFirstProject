package com.Controller;

import com.Dao.UserDaoImpl;
import com.Model.User;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet({"/register.do"})
public class registerController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uername=request.getParameter("username");
        String password=request.getParameter("password");
        User user=new User(uername,password,1);
        UserDaoImpl userDao=new UserDaoImpl();
        boolean flag=false;
        flag=userDao.regUser(user);
        if(flag){
            RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
            rd.forward(request,response);
        }
        else {
            response.sendRedirect("login.jsp");
        }
    }
}
