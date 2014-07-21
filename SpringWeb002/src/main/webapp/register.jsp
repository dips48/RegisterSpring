<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>
</head>
<body style="text-align:center">
<form method="POST" action="register.do">
	<spring:bind path="command.*">
		<font color="#FF0000">
		<c:forEach
			items="${status.errorMessages}"
			var="error">
			错误：<c:out value="${error}"/><br/>
			</c:forEach>
			</font>
	</spring:bind>
	<table border="0" width="450" height="101" cellspacing="0" cellpadding="0">
	<tr>
	<td height="27" width="408" colspan="2">
	<p align="center"><b>用户注册</b></td>
	</tr>
	<tr>
	<td height="23"  width="104">用户名:</td>
	<td height="23" width="450">
		<spring:bind path="command.username">
		<input type="text" value="<c:out value="${status.value}"/>"
							name="<c:out value="${status.expression}"/>">
							<br/>
		<c:if test="${status.error}">
		<font color="#FF0000">
			错误:
			<c:forEach items="${status.errorMessages}"
			var="error">
			<c:out value="${error}"/>
			</c:forEach>
			</font>
			</c:if>
			</spring:bind>
			</td>
			</tr>
	<tr>
	<td height="23" width="104">密码：</td>
	<td height="23" width="450">
		<spring:bind path="command.password1">
		<input type="password"
		value="<c:out value="${status.value}"/>"
		name="<c:out value="${status.expression}"/>"
		>
		<br/>
		<c:if test="${status.error}">
		<font color="#FF0000">
		错误：
		<c:forEach items="${status.errorMessages}"
		var="error"
		>
		<c:out value="${error}"/>
		</c:forEach>
		</font>
		</c:if>
		</spring:bind>
		</td>
		</tr>
		<tr>
	<td height="23" width="104">重复密码：</td>
	<td height="23" width="450">
		<spring:bind path="command.password2">
		<input type="password"
		value="<c:out value="${status.value}"/>"
		name="<c:out value="${status.expression}"/>"
		>
		<br/>
		<c:if test="${status.error}">
		<font color="#FF0000">
		错误：
		<c:forEach items="${status.errorMessages}"
		var="error"
		>
		<c:out value="${error}"/>
		</c:forEach>
		</font>
		</c:if>
		</spring:bind>
		</td>
		</tr>
	</table>
	<p>
	<input type="submit" value="注册" name="B1">
</form>
</body>
</html>