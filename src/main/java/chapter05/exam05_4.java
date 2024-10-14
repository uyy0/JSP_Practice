package chapter05;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/5_4")
public class exam05_4 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher ds = req.getRequestDispatcher("chapter05/exam5-4.jsp");
		ds.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String userid=request.getParameter("id");
		String password=request.getParameter("passwd");
		
		if(userid != null || password != null) {
			if(userid.equals("관리자")&&password.equals("1234")){
				response.sendRedirect("exam5_4_success");
			} else {
				response.sendRedirect("exam5_4_failed");
			}
		} else{
			response.sendRedirect("exam5_4_failed");
		}
	}

}
