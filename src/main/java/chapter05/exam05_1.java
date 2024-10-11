package chapter05;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/5_1")
public class exam05_1 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {	

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String id =req.getParameter("id");
		System.out.println("전달받은 아이디 : "+id);
		String pw=req.getParameter("passwd");
		System.out.println("전달받은 비밀번호 : "+pw);
		req.setAttribute("userid", id);
		req.setAttribute("password", pw);
		RequestDispatcher ds = req.getRequestDispatcher("chapter05/exam5-1.jsp");
		ds.forward(req, resp);
	}

}
