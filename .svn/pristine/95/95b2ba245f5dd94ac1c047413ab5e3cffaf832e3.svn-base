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
    <td width="39%" align="left">[在校学生管理]</td>
   
    <td width="57%"align="right">
       <a href="${pageContext.request.contextPath }/crm_html/html/student/addStudent.jsp"><img src="${pageContext.request.contextPath}/crm_html/images/button/tianjia.gif" /></a>
       <a href="#"><img src="${pageContext.request.contextPath}/crm_html/images/button/gaojichaxun.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/crm_html/images/tright.gif"/></td>
  </tr>
</table>

<!-- 查询条件：添加或选择马上查询 -->
<form action="" method="post">
	<table width="88%" border="0" style="margin: 20px;" >
	  <tr>
	    <td width="80px">查询条件：</td>
	    <td width="300px"><input size="20" />（姓名|电话|QQ）</td>
	    <td width="300px"><select><option>==选择班级==</option> </select></td>
	    <td></td>
	  </tr>
	</table>
</form>


<table border="0" cellspacing="0" cellpadding="0" style="margin-top:5px;">
  <tr>
    <td ><img src="${pageContext.request.contextPath}/crm_html/images/result.gif"/></td>
  </tr>
</table>
<table width="100%" border="1" >
  
  <tr class="henglan" style="font-weight:bold;">

    <td width="10%" align="center">姓名</td>
    <td width="10%" align="center">入学时间</td>
    <td width="10%" align="center">班级</td>
    <td width="10%" align="center">QQ</td>
    <td width="10%" align="center">联系电话</td>
    <td width="10%" align="center">已付/应付学费</td>
    <td width="10%" align="center">状态</td>  <!-- 新生、转班、升级、退费、毕业 -->
    <td width="5%" align="center">编辑</td>
    <td width="5%" align="center">升级/转班</td>
    <td width="5%" align="center">查看</td>
    <td width="5%" align="center">流失</td>
  </tr>
  <c:if test="${not empty list }">
  <c:forEach items="${list }" var="student">
        <tr class="tabtd2">
	<td align="center">${student.name }(${student.gender})</td>
        <td align="center"><fmt:formatDate value="${ student.classInfo.begintime}" pattern="yyyy年MM月dd日"/></td>
        <td align="center">${ student.classInfo.name}</td>
        <td align="center">${student.qq }</td>
        <td align="center">${student.telephone}</td>
        <td align="center">${student.actualtuition} / ${student.musttuition }</td>
        <td align="center"><c:if test="${student.status=='1' }">
                                                            新生<!-- 1.新生、2.转班、3.升级、4.退费、5.毕业 -->
                                </c:if> <c:if test="${refer.status=='2' }">
                                                            转班
                                </c:if>
                                <c:if test="${student.status=='3' }">
                                                            升级<!-- 1.新生、2.转班、3.升级、4.退费、5.毕业 -->
                                </c:if> <c:if test="${refer.status=='2' }">
                                                            退费
                                </c:if>
                                </td>
        <td align="center"><a href="${pageContext.request.contextPath }/crm_html/html/student/addOrEditStudent.jsp"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"/></a></td>
        <td align="center"><a href="${pageContext.request.contextPath }/crm_html/html/role/editRole.jsp"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"/></a></td>
	<td align="center"><a href="${pageContext.request.contextPath }/crm_html/html/role/editRole.jsp"><img src="${pageContext.request.contextPath}/crm_html/images/button/view.gif" class="img"/></a></td>
        <td align="center"><a href="${pageContext.request.contextPath }/crm_html/privilege/addlostPrivilege.jsp"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"/></a></td>
  </tr>
  
  
  
  </c:forEach>
  </c:if>
  <tr class="tabtd2">
	<td align="center">李四(男)</td>
    <td align="center">2013年7月15日 </td>
    <td align="center">0831Java就业班</td>
    <td align="center">36666666</td>
    <td align="center">15937824718</td>
    <td align="center">3000/15000</td>
    <td align="center">已就业</td>
    <td align="center"><a href="${pageContext.request.contextPath }/crm_html/student/addOrEditRole.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"/></a></td>
    <td align="center"><a href="editRole.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"/></a></td>
	<td align="center"><a href="editRole.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/view.gif" class="img"/></a></td>
    <td align="center"><a href="${pageContext.request.contextPath }/crm_html/privilege/addlostPrivilege.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"/></a></td>
  </tr>
  
  <tr class="tabtd1">
  	<td align="center">张三</td>
    <td align="center">2014年9月18日 </td>
    <td align="center">0931Java基础班</td>
    <td align="center">1234567</td>
    <td align="center">13456789098</td>
    <td align="center">已付清</td>
    <td align="center">学习中</td>
   	<td align="center"><a href="${pageContext.request.contextPath }/crm_html/html/student/addOrEditRole.jsp"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"/></a></td>
    <td align="center"><a href="editRole.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"/></a></td>
	<td align="center"><a href="editRole.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/view.gif" class="img"/></a></td>
	<td align="center"><a href="editRole.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"/></a></td>
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
