<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'error.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    This is my JSP page. <br>
  	<spring:message code="name"></spring:message>
  	<br>
    ${student.name }
    ${errors}dsfdsf
    <spring:hasBindErrors name="student">  
    <c:if test="${errors.fieldErrorCount > 0}">  
        字段错误：<br/>  
        <c:forEach items="${errors.fieldErrors}" var="error">  
            <spring:message var="message" code="${error.code}" arguments="${error.arguments}" text="${error.defaultMessage}"/>  
            ${error.field}------${error.defaultMessage}<br/>  
        </c:forEach>  
    </c:if>  
  
    <c:if test="${errors.globalErrorCount > 0}">  
        全局错误：<br/>  
        <c:forEach items="${errors.globalErrors}" var="error">  
            <spring:message var="message" code="${error.code}" arguments="${error.arguments}" text="${error.defaultMessage}"/>  
            <c:if test="${not empty message}">  
                ${message}<br/>  
            </c:if>  
        </c:forEach>  
    </c:if>  
</spring:hasBindErrors> 
</body>
</html>
