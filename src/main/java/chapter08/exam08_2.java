package chapter08;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/8_2")
public class exam08_2 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher ds = req.getRequestDispatcher("chapter08/exam8-2.jsp");
		ds.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("post 도착");
		
		req.setCharacterEncoding("utf-8");
		String id=req.getParameter("id");
		String passwd=req.getParameter("passwd");
		
		System.out.println(id);
		System.out.println(passwd);
		
		req.setAttribute("id", id);
		req.setAttribute("passwd", passwd);
		
		RequestDispatcher ds = req.getRequestDispatcher("chapter08/exam8-2_process.jsp");
		ds.forward(req, resp);
	}

}
