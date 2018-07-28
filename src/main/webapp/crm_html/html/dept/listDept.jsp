<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html >
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
    <td width="39%" align="left">[就业情况]</td>
   
    <td width="57%"align="right">
       <a href="${pageContext.request.contextPath}/crm_html/html/dept/addjobDept.jsp"><img src="${pageContext.request.contextPath}/crm_html/images/button/tianjia.gif" /></a>
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
    <td width="9%" align="center">QQ</td>
    <td width="8%" align="center">联系电话</td>
    <td width="9%" align="center">就读班级</td>
    <td width="15%" align="center">就业公司</td>
    <td width="12%" align="center">就业时间</td>
    <td width="15%" align="center">岗位</td>
    <td width="12%" align="center">工资</td>
    <td width="7%" align="center">编辑</td>
  </tr>
  
  <c:forEach items="${list }" var="graduate">
       <tr class="tabtd2">
    <td align="center">${graduate.student.name }</td>
    <td align="center">${graduate.student.qq }</td>
    <td align="center">${graduate.student.telephone }</td>
    <td align="center">${graduate.student.classInfo.name }</td>
    <td align="center">${graduate.companyname }</td>
    <td align="center"><fmt:formatDate value="${graduate.entrytime }" pattern="yyyy年MM月dd日"/></td>
    <td align="center">${graduate.post}</td>
    <td align="center">${graduate.salary}</td>
  	<td width="7%" align="center"><a href="${pageContext.request.contextPath}/crm_html/html/addjobDept.jsp"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"></a></td>
  </tr>
  
  
  
  
  </c:forEach>
  <tr class="tabtd2">
    <td align="center">王开发</td>
    <td align="center">123123123 </td>
    <td align="center">18888888888</td>
    <td align="center">0731Java就业班级</td>
    <td align="center">北大方正</td>
    <td align="center">2014年9月9日</td>
    <td align="center">程序猿</td>
    <td align="center">11888</td>
  	<td width="7%" align="center"><a href="addjobDept.jsp"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"></a></td>
  </tr>
  <tr class="tabtd1">
    <td align="center">刘后台</td>
    <td align="center">321321312</td>
    <td align="center">14666666666</td>
    <td align="center">0731Java就业班级</td>
    <td align="center">IBM系统研发中心</td>
    <td align="center">2014年9月19日</td>
    <td align="center">系统分析员</td>
    <td align="center">9000</td>
  	<td width="7%" align="center"><a href="addjobDept.jsp"><img src="../../images/button/modify.gif" class="img"></a></td>
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
