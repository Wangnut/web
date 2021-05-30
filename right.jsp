<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>猜对了</title>
</head>

<body>
<%
	int num=Integer.parseInt((String)session.getAttribute("num"));
	int times=Integer.parseInt((String)session.getAttribute("times"));
%>
<form method=post name="form4" action="">
<table align="center" border="2">
	<caption>恭喜你，终于猜对了！</caption>
	<tr>
	<td>正确答案就是<%=num%></td>
	</tr>
	<tr>
	<td>你一共猜了<%=times%>次</td>
	</tr>
</table>
</form>
</body>
</html>
