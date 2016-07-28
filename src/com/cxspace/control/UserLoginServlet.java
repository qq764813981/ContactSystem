package com.cxspace.control;

import com.cxspace.service.impl.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by cxspace on 16-7-28.
 */

public class UserLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        request.setCharacterEncoding("utf-8");

        String phone = request.getParameter("phone");
        String password = request.getParameter("password");

        UserService userService = new UserService();


        if(userService.userLogin(phone,password)){

            response.sendRedirect(request.getContextPath()+"/front/index.jsp");

        }else {
            request.setAttribute("message","输入有误");

            request.getRequestDispatcher("/front/login.jsp").forward(request,response);
        }
        //System.out.println(phone+"-"+password);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
