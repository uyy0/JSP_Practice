package chapter16.dao;

import java.io.PrintWriter;
import java.sql.*;
import java.util.*;

import chapter16.dto.exam16_dto;

public class exam16_repository {
	private static exam16_repository exam16 = new exam16_repository();
	public static exam16_repository getInstance() {
		return exam16;
	}
	
	private Connection DBconn() throws Exception{
		Connection conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/JSPbookDB";
			String id="root";
			String pw="1234";
			conn=DriverManager.getConnection(url,id,pw);
			System.out.println("데이터 베이스 연결 완료");
		} catch (Exception e) {
			System.out.println("mysql db 연결 오류 발생.");
		}
		return conn;
	}
	public void preparedInsert(exam16_dto dto) throws Exception {
		Connection  conn = DBconn();
		PreparedStatement pstmt=null;
		try {
			String id = dto.getId();
			String pw = dto.getPw();
			String name = dto.getName();
			
			System.out.println(id);
			
			String sql="insert into Member(id,pw,name) values(?,?,?)";
			
			System.out.println(name);
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.executeUpdate();
			System.out.println("Member 테이블 삽입이 성공했습니다.");
		} catch (Exception e) {
			System.out.println("Member 테이블 삽입이 실패했습니다.<br>");
			System.out.println("Exception : "+e.getMessage());
		} finally {
				if(pstmt!=null) {pstmt.close();}
				if(conn!=null) {conn.close();}
		}
	}
	
	public ArrayList<exam16_dto> getAllmember() throws Exception{
		ArrayList<exam16_dto> arr = new ArrayList<exam16_dto>();
		ResultSet rs = null;
		Statement stmt = null;
		Connection  conn = DBconn();
		try {
			String sql="select * from Member";
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			while(rs.next()){
				String id=rs.getString("id");
				String pw=rs.getString("pw");
				String name=rs.getString("name");
				
				exam16_dto dto = new exam16_dto();
				dto.setId(id);
				dto.setPw(pw);
				dto.setName(name);
				
				arr.add(dto);
			}
		}catch(Exception e) {System.out.println("getAllmember 오류 발생.");}
		
		
		return arr;
	}
}

