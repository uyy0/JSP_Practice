package chapter08;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/8_5")
public class exam08_5 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("get 도착");
		RequestDispatcher ds = req.getRequestDispatcher("chapter08/exam8-5.jsp");
		ds.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("post 도착");
		req.setCharacterEncoding("utf-8");
		
		String id=req.getParameter("id");
		String name=req.getParameter("name");
		String pw=req.getParameter("pw");
		String phone1=req.getParameter("phone1");
		String phone2=req.getParameter("phone2");
		String phone3=req.getParameter("phone3");
		String email=req.getParameter("email");
		
		req.setAttribute("id", id);
		req.setAttribute("name", name);
		req.setAttribute("pw", pw);
		req.setAttribute("phone1", phone1);
		req.setAttribute("phone2", phone2);
		req.setAttribute("phone3", phone3);
		req.setAttribute("email", email);
		
		RequestDispatcher ds = req.getRequestDispatcher("chapter08/exam8-5_process.jsp");
		ds.forward(req, resp);

	}

}
