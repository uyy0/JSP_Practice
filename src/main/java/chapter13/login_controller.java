package chapter13;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/13_login1")
public class login_controller extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("login_controller get 도착");
		RequestDispatcher ds = req.getRequestDispatcher("chapter13/login.jsp");
		ds.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//전처리
		String id =	req.getParameter("id");
		String pw =	req.getParameter("pw");
		
		if(id.equals("admin")&&pw.equals("1234")) {
			//getSession(true) or getSession() : 현재 세션 객체가 있으면 그대로 사용, 없으면 새로 생성
			//getSession(false) : 현재 세션 객체가 있으면 그대로 사용, 없으면 null 반환
			HttpSession session=req.getSession(true);
			session.setAttribute("id",id);
			session.setAttribute("pw",pw);
		}
		else {
			
		}
		
		//모델
		//이동
		RequestDispatcher ds = req.getRequestDispatcher("chapter13/printer.jsp");
		ds.forward(req, resp);
	}

}
