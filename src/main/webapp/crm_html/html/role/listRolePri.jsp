<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <td width="39%" align="left">[学员升级/留班]</td>
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
    <td width="7%" align="center">QQ</td>
    <td width="8%" align="center">联系电话</td>
    <td width="8%" align="center">类别</td>
    <td width="11%" align="center">之前的班级</td>
    <td width="12%" align="center">之后的班级</td>
    <td width="12%" align="center">操作时间</td>
    <td width="12%" align="center">经办人</td>
    <td width="6%" align="center">查看</td>
  </tr>
  <c:forEach items="${list }" var="station">
        <tr class="tabtd2">
        <td align="center">${station.student.name }</td>
        <td align="center">${station.student.qq}</td>
        <td align="center">${station.student.telephone}</td>
    <td align="center">${station.flag }</td>
    <td align="center">${station.beforeinfo }</td>
    <td align="center">${station.afterInfo }</td>
    <td align="center"><fmt:formatDate value="${station.createdate }" pattern="yyyy年MM月dd日"/></td>
    <td align="center">${station.staff }</td>
    <td width="6%" align="center"><a href="${pageContext.request.contextPath}/crm_html/html/role/viewRolepri.jsp"><img src="${pageContext.request.contextPath}/crm_html/images/button/view.gif" class="img"></a></td>
  </tr>

  </c:forEach>
  <tr class="tabtd2">
    <td align="center">张三</td>
    <td align="center">123456789</td>
    <td align="center">13888888888</td>
    <td align="center">升级</td>
    <td align="center">0931Java基础班</td>
    <td align="center">1103Java就业班</td>
    <td align="center">2014年11月1日</td>
    <td align="center">刘淼</td>
    <td width="6%" align="center"><a href="viewRolepri.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/view.gif" class="img"></a></td>
  </tr>
  
  <tr class="tabtd1">
    <td align="center">张三</td>
    <td align="center">123456789</td>
    <td align="center">13888888888</td>
    <td align="center">升级</td>
    <td align="center">0931Java基础班</td>
    <td align="center">1103Java就业班</td>
    <td align="center">2014年11月1日</td>
    <td align="center">刘淼</td>
    <td width="6%" align="center"><a href="viewRolepri.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/view.gif" class="img"></a></td>
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
</body>
</html>
