<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>猜小了</title>
</head>

<body>
<%
	int num=Integer.parseInt((String)session.getAttribute("num"));
	int times=Integer.parseInt((String)session.getAttribute("times"));
%>

<form method=post name="form3" action="">
<table align="center" border="2">
	<caption>猜小了，重新试一下吧</caption>
	<tr>
	<td><input type="text" name="guess"style="width:300px"></td>
	</tr>
	<tr>
	<td><input type="submit" name="submit" value="验证" style="width:305px"></td>
	</tr>
	<tr>
	<td><input type="hidden" name="num" value="<%=num%>"></td>
	<td><input type="hidden" name="times" value="<%=times+1%>"></td>
	</tr>
</table>
</form>
<%
	String guess=request.getParameter("guess");
	String num=request.getParameter("num");
	String times=request.getParameter("times");
	if(guess==null){
	}
	else{
		session.setAttribute("num",num);
		session.setAttribute("guess",guess);
		session.setAttribute("times",times);
		response.sendRedirect("judge.jsp");
	}		
%>
</body>
</html>
