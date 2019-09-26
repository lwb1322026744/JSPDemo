package cn.xs.servlet;

import cn.xs.entity.Branche;
import cn.xs.service.BrancheService;
import cn.xs.service.impl.BrancheServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet("/banche")
public class BanchesServlet extends HttpServlet {
    BrancheService banchesServlet=new BrancheServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        List<Branche> brancheInfo = banchesServlet.getBrancheInfo();
        request.getSession().setAttribute("brancheInfo",brancheInfo);
        request.getRequestDispatcher(request.getContextPath()+"/list.jsp").forward(request,response);
    }
}
