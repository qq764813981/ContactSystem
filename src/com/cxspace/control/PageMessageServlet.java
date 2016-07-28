package com.cxspace.control;

import com.cxspace.bean.PageBean;
import com.cxspace.entity.Contact;
import com.cxspace.entity.Message;
import com.cxspace.service.impl.ContactService;
import com.cxspace.service.impl.MessageService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by cxspace on 16-7-28.
 */
@WebServlet(name = "PageMessageServlet")
public class PageMessageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        System.out.println("ok");

        try {

            MessageService messageService = new MessageService();

            String currPage = request.getParameter("currentPage");

            //初始化
            if (currPage == null ||"".equals(currPage.trim())){
                currPage="1";
            }

            int currentPage = Integer.parseInt(currPage);

            //创建pagebean,设置当前页参数
            PageBean<Message> pageBean = new PageBean<>();

            pageBean.setCurrentPage(currentPage);

            messageService.getPageData(pageBean);

            request.setAttribute("pageBean",pageBean);


            System.out.println("成功查到分页数据");

            /*
            * 若提交的内容为“pkgcr#awldb”，地址栏的URL显示为“xxx/?q=pkgcr%23awldb”，也即参数中q的值实际上为“pkgcr#awldb”
            * */

            request.getRequestDispatcher("/front/message.jsp").forward(request,response);


        }catch (Exception e){
            throw new RuntimeException(e);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
