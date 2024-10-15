<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 7-3 File Upload</title>
</head>
<body>
	<%
		String fileUploadPath=request.getServletContext().getRealPath("img");
		
		DiskFileUpload upload = new DiskFileUpload();
		
		List items=upload.parseRequest(request);
		
		Iterator params=items.iterator();
		
		while(params.hasNext()){
			FileItem fileItem=(FileItem)params.next();
			if(!fileItem.isFormField()){
				String fileName=fileItem.getName();
				fileName=fileName.substring(fileName.lastIndexOf("\\")+1);
				File file=new File(fileUploadPath+"/"+fileName);
				fileItem.write(file);
				System.out.println("업로드 성공");
				out.print("업로드 성공");
			}
		}
	%>
</body>
</html>