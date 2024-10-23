package chapter14;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/14_1")
public class exam14_1 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("get 도착");
		RequestDispatcher ds = req.getRequestDispatcher("chapter14/exam14-1.jsp");
		ds.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String user_id=req.getParameter("id");
		String user_pw=req.getParameter("pw");
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter writer=resp.getWriter();
		
		if(user_id.equals("admin")&&user_pw.equals("1234")) {
			Cookie cookie_id=new Cookie("user_id",user_id);
			Cookie cookie_pw=new Cookie("user_pw",user_pw);
			resp.addCookie(cookie_id);
			resp.addCookie(cookie_pw);		
			writer.println("쿠키 생성이 성공했습니다!<br>");
			writer.println(user_id+"님 환영합니다.");
		} else {
			writer.println("쿠키 생성을 실패했습니다.");
		}
		
	}

}
