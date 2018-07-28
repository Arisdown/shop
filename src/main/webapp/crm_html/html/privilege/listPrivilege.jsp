<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <td width="39%" align="left">[学员流失情况]</td>
   
    <td width="57%"align="right">
       <a href="#"><img src="${pageContext.request.contextPath}/crm_html/images/button/gaojichaxun.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/crm_html/images/tright.gif"/></td>
  </tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" style="margin-top:5px;">
  <tr>
    <td ><img src="${pageContext.request.contextPath}/crm_html/images/result.gif"/></td>
  </tr>
</table>
<table width="100%" border="1" >
  
  <tr class="henglan" style="font-weight:bold;">
    <td width="6%" align="center">学生姓名</td>
    <td width="8%" align="center">QQ</td>
    <td width="7%" align="center">联系电话</td>
    <td width="10%" align="center">以前的班级</td>
    <td width="10%" align="center">流失原因</td>
    <td width="11%" align="center">业务时间</td>
    <td width="12%" align="center">经办人</td>
    <td width="13%" align="center">是否退款</td>
    <td width="6%" align="center">编辑</td>
  </tr>
  <c:if test="${not empty list }">
  <c:forEach items="${list }" var="info">
  
     <tr class="tabtd2">
     <td align="center">${info.student.name }</td>
     <td align="center">${info.student.qq }</td>
     <td align="center">${info.student.telephone }</td>
     <td align="center">${info.className }</td>
     <td align="center">${info.remark }</td>
     <td align="center"><fmt:formatDate value="${info.createdate }" pattern="yyyy年MM月dd日"/></td>
     <td align="center">${info.staffName }</td>
     <td align="center">${info.isrefund }</td>
     <td width="6%" align="center"><a href="editlostPrivilege.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"></a></td>
  </tr>
 
  
  
  
  </c:forEach>
  </c:if>
  <tr class="tabtd2">
    <td align="center">不上课</td>
    <td align="center">748839</td>
    <td align="center">13895399539</td>
    <td align="center">1111Java就业班</td>
    <td align="center">长期未上课</td>
    <td align="center">2014年12月21日</td>
    <td align="center">刘淼</td>
    <td align="center">否</td>
    <td width="6%" align="center"><a href="editlostPrivilege.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"></a></td>
  </tr>
  
  <tr class="tabtd1">
 	<td align="center">不想来</td>
    <td align="center">748839</td>
    <td align="center">13895399539</td>
    <td align="center">1111Java就业班</td>
    <td align="center">长期未上课</td>
    <td align="center">2014年12月21日</td>
    <td align="center">刘淼</td>
    <td align="center">否</td>
    <td width="6%" align="center"><a href="editlostPrivilege.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"></a></td>
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
