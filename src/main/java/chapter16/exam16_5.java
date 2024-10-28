package chapter16;

import java.io.IOException;
import java.util.ArrayList;

import chapter16.dao.exam16_repository;
import chapter16.dto.exam16_dto;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/16_5")
public class exam16_5 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("get 도착");
		exam16_repository exam16 = exam16_repository.getInstance();
		try {
			ArrayList<exam16_dto> arr = exam16.getAllmember();
			req.setAttribute("list", arr);
		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher ds = req.getRequestDispatcher("chapter16/exam16-5.jsp");
		ds.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

}
