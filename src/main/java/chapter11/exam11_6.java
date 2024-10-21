package chapter11;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/11_6")
public class exam11_6 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("get 도착");
		RequestDispatcher ds = req.getRequestDispatcher("chapter11/exam11-6.jsp");
		ds.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("post 도착");
		try {
			String num1=req.getParameter("num1");
			String num2=req.getParameter("num2");
			int a =Integer.parseInt(num1);
			int b =Integer.parseInt(num2);
			int c =a/b;
		} catch(NumberFormatException e) {
			RequestDispatcher dispatcher=req.getRequestDispatcher("chapter11/exam11-6_error.jsp");
			dispatcher.forward(req, resp);
		}
	}

}
