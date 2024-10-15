<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		String save = request.getServletContext().getRealPath("img");
		
		DiskFileUpload upload=new DiskFileUpload();
		
		List items=upload.parseRequest(request);
		
		Iterator params=items.iterator();
		
		while(params.hasNext()){
			FileItem item=(FileItem) params.next();
			if(item.isFormField()){
				String title=item.getString("UTF-8");
				out.println("<h3>"+title+"</h3>");
			} else{
				String fileName=item.getName();
				fileName=fileName.substring(fileName.lastIndexOf("\\")+1);
				File file=new File(save+"/"+fileName);
				item.write(file);
				out.println("파일 이름 : "+fileName+"<br>");
			}
		}
	%>
</body>
</html>