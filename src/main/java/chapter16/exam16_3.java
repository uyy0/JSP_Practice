package chapter16;

import java.io.IOException;

import chapter16.dao.exam16_repository;
import chapter16.dto.exam16_dto;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/16_3")
public class exam16_3 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("get 도착");
		RequestDispatcher ds = req.getRequestDispatcher("chapter16/exam16-3.jsp");
		ds.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		req.setCharacterEncoding("utf-8");
		
		String id=req.getParameter("id");
		String pw=req.getParameter("pw");
		String name=req.getParameter("name");
		
		exam16_dto dto=new exam16_dto();
		dto.setId(id);
		dto.setPw(pw);
		dto.setName(name);
		
		exam16_repository exam16 = exam16_repository.getInstance();
		try {
			exam16.preparedInsert(dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
