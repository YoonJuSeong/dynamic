<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- 
 -->
 
 <%
 String buf = "";
 
 List<Integer> list = new ArrayList<Integer>();
 list.add(1);
 list.add(2);
 list.add(1);
 list.add(3);
 list.add(4);

 boolean chk = false;
 
 buf += "<table border='1' cellspacing='0'>";

 for(int i=0; i<list.size(); i++){
	 for(int j=0; j<list.get(i); j++){
		 buf += "<tr>";
		 for(int k=0; k<1; k++){
			 for(int l=0; l<5; l++){
				 if(l==2){ //컬럼의 기준점
					 if(j==0){
						 buf += "<td rowspan = '"+list.get(i).toString()+"'>rowspan="+list.get(i).toString();
						 buf += "</td>";
					 }else
					 {
						 //buf += "<td>none";
						 //buf += "</td>";
					 }
				 }else{
					 buf += "<td>none";
					 buf += "</td>";					 
				 }
			 }
		 }
		 buf += "</tr>";
	 }
 }
 
 buf += "</table>";
 
 out.println(buf);
 
 %>

</body>
</html>