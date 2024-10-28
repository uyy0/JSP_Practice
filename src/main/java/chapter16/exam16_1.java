package chapter16;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/16_1")
public class exam16_1 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter writer=resp.getWriter();
		Connection conn=null;
		try {
			String url="jdbc:mysql://localhost:3306/JSPbookDB";
			String user="root";
			String password="1234";
			
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url,user,password);
			writer.println("데이터베이스 연결이 성공했습니다.");
		} catch(Exception e) {
			writer.println("데이터베이스 연결이 실패했습니다.<br>");
			writer.println("SQLException: " + e.getMessage());
		} finally {
			if(conn!=null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

}
