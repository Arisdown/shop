<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CRM系统</title>
</head>

<frameset rows="100,*" framespacing="0px" frameborder="no">
	<frame src="${pageContext.request.contextPath }/crm_html/html/frame/top.jsp" scrolling="no"/>
    <frameset id="main" cols="170,9,*" framespacing="0px" frameborder="no" >
        <frameset rows="30,*,40" framespacing="0px" frameborder="no" >
			<frame src="${pageContext.request.contextPath }/crm_html/html/frame/left1.jsp" scrolling="no"/>
            <frame src="${pageContext.request.contextPath }/crm_html/html/frame/left.jsp" scrolling="yes"/>
            <frame src="${pageContext.request.contextPath }/crm_html/html/frame/left2.jsp" scrolling="no"/>
        </frameset>
        <frame src="${pageContext.request.contextPath }/crm_html/html/frame/control.jsp" scrolling="no"/>
        <frame src="${pageContext.request.contextPath }/crm_html/html/frame/right.jsp" name="right" scrolling="no"/>
	</frameset>
</frameset>
</html>
