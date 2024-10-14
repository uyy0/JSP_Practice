package chapter05;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/5_8")
public class exam05_8 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher ds = req.getRequestDispatcher("chapter05/exam5-8.jsp");
		ds.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String userid=req.getParameter("id");
		String password=req.getParameter("passwd");
		System.out.println(userid);
		System.out.println(password);
		req.setAttribute("id", userid);
		req.setAttribute("passwd", password);
		RequestDispatcher ds = req.getRequestDispatcher("chapter05/exam5-8_process.jsp");
		ds.forward(req, resp);
	}

}
