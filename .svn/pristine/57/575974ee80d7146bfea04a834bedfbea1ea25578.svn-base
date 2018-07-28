<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>

<link href="${pageContext.request.contextPath }/crm_html/css/sys.css" type="text/css" rel="stylesheet" />

</head>

<body >
 <table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%">
  <tr>
    <td width="1%"><img src="${pageContext.request.contextPath }/crm_html/images/tleft.gif"/></td>
    <td width="39%" align="left">[职务管理]</td>
   
    <td width="57%"align="right">
    	<!-- 添加职务 -->
       <a href="${pageContext.request.contextPath}/crm_html/html/post/addOrEditPost.jsp"><img src="${pageContext.request.contextPath }/crm_html/images/button/tianjia.gif" /></a>
      
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath }/crm_html/images/tright.gif"/></td>
  </tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" style="margin-top:5px;">
  <tr>
    <td ><img src="${pageContext.request.contextPath}/crm_html/images/result.gif"/></td>
  </tr>
</table>
<table width="100%" border="1" >
  
  <tr class="henglan" style="font-weight:bold;">
    <td width="6%" align="center">部门名称</td>
    <td width="6%" align="center">职务名称</td>
    <td width="7%" align="center">编辑</td>
  </tr>
  
  <c:forEach items="${list }" var="post">
  <tr class="tabtd2">
        <td align="center">${post.department.depname }</td>
        <td align="center">${post.postname }</td>
  	<td width="7%" align="center"><a href="${pageContext.request.contextPath}/post/updateUI.do?id=${post.postid}"><img src="${pageContext.request.contextPath }/crm_html/images/button/modify.gif" class="img"/></a></td>
  </tr>
  </c:forEach>
  <tr class="tabtd2">
    <td align="center">Java教学部</td>
    <td align="center">主管</td>
  	<td width="7%" align="center"><a href="addOrEditPost.html"><img src="${pageContext.request.contextPath }/crm_html/images/button/modify.gif" class="img"/></a></td>
  </tr>
  <tr class="tabtd1">
    <td align="center">财务部</td>
    <td align="center">讲师</td>
  	<td width="7%" align="center"><a href="${pageContext.request.contextPath}/crm_html/html/addOrEditPost.html"><img src="${pageContext.request.contextPath }/crm_html/images/button/modify.gif" class="img"/></a></td>
  </tr>
   <tr class="tabtd2">
    <td align="center">学工部</td>
    <td align="center">主管</td>
  	<td width="7%" align="center"><a href="addOrEditPost.html"><img src="${pageContext.request.contextPath }/crm_html/images/button/modify.gif" class="img"/></a></td>
  </tr>
  <tr class="tabtd1">
    <td align="center">学工部</td>
    <td align="center">班主任</td>
  	<td width="7%" align="center"><a href="addOrEditPost.html"><img src="${pageContext.request.contextPath }/crm_html/images/button/modify.gif" class="img"/></a></td>
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
