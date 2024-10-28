package chapter16;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/16_2")
public class exam16_2 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("get 도착");
		RequestDispatcher ds = req.getRequestDispatcher("chapter16/exam16-2.jsp");
		ds.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter writer=resp.getWriter();
		Connection conn=null;
		
		String url="jdbc:mysql://localhost:3306/JSPbookDB";
		String id="root";
		String pw="1234";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url,id,pw);
		} catch (Exception e) {
			System.out.println("mysql db 연결 오류 발생.");
		}
		
		req.setCharacterEncoding("utf-8");
		
		String user_id=req.getParameter("id");
		String user_pw=req.getParameter("pw");
		String user_name=req.getParameter("name");
		
		Statement stmt=null;
		
		try {
			String sql="insert into Member(id,pw,name) values('"+user_id+"','"+user_pw+"','"+user_name+"')";
			stmt=conn.createStatement();
			stmt.executeUpdate(sql);
			writer.println("Member 테이블 삽입이 성공했습니다.");
		} catch (Exception e) {
			writer.println("Member 테이블 삽입이 실패했습니다.<br>");
			writer.println("Exception : "+e.getMessage());
		} finally {
			 {try {
				if(stmt!=null) {stmt.close();}
				if(conn!=null) {conn.close();}
			} catch (Exception e) {
				e.printStackTrace();
			}}

		}
		
	}

}
