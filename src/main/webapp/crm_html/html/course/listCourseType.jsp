<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>

<link href="${pageContext.request.contextPath}/crm_html/css/sys.css" type="text/css" rel="stylesheet" />

</head>

<body >
 <table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%">
  <tr>
    <td width="1%"><img src="${pageContext.request.contextPath}/crm_html/images/tleft.gif"/></td>
    <td width="39%" align="left">[课程类别]</td>
   
    <td width="57%"align="right">
    	<!-- -->
       <a href="${pageContext.request.contextPath}/crm_html/html/course/addCourseType.jsp"><img src="${pageContext.request.contextPath}/crm_html/images/button/tianjia.gif" /></a>
       <a href="${pageContext.request.contextPath}/crm_html/html/course/queryCourse.jsp"><img src="${pageContext.request.contextPath}/crm_html/images/button/gaojichaxun.gif" /></a>
      
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/crm_html/images/tright.gif"/></td>
  </tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" style="margin-top:5px;">
  <tr>
    <td ><img src="${pageContext.request.contextPath}/crm_html/images/result.gif"/></td>
  </tr>
</table>
<table width="97%" border="1" >
  
  <tr class="henglan" style="font-weight:bold;">
    <td width="14%" align="center">名称</td>
    <td width="33%" align="center">简介</td>
    <td width="13%" align="center">总学时</td>
    <td width="18%" align="center">收费标准</td>
	<td width="11%" align="center">编辑</td>
  </tr>
  <c:forEach items="${list }" var="course">
 <tr class="tabtd1">
    <td align="center">${course.coursename }</td>
    <td align="center">${course.remark }</td>
    <td align="center">${course.total }</td>
    <td align="center">${course.coursecost }</td>
    <td width="11%" align="center"><a href="${pageContext.request.contextPath}/course/editUI.do?id=${course.coursetypeid}"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"/></a></td>
  </tr>
  </c:forEach>
  <tr class="tabtd1">
    <td align="center">Java基础班</td>
    <td align="center">Java基础班，为就业班做准备 </td>
    <td align="center">480</td>
    <td align="center">1888888888</td>
  	<td width="11%" align="center"><a href="addOrEditCourseType.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"/></a></td>
  </tr>
  <tr class="tabtd2">
   <td align="center">Java就业班</td>
    <td align="center">Java就业班，为找工作做准备 </td>
    <td align="center">480</td>
    <td align="center">1888888888</td>
  	<td width="11%" align="center"><a href="addOrEditCourseType.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"/></a></td>
  </tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td align="right">
    	<span>第1/3页</span>
        <span>
        	<a href="#">[首页]</a>&nbsp;&nbsp;
            <a href="#">[上一页]</a>&nbsp;&nbsp;
            <a href="#">[下一页]</a>&nbsp;&nbsp;
            <a href="#">[尾页]</a>
        </span>
    </td>
  </tr>
</table>
</body>
</html>
