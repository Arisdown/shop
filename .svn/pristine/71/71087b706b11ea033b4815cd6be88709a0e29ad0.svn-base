<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/crm_html/css/sys.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">

     function back(){
    	 window.history.back(-1);
     }


</script>
</head>

<body class="emp_body">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%">
  <tr>
    <td width="1%"><img src="${pageContext.request.contextPath}/crm_html/images/tleft.gif"/></td>
    <td width="44%" align="left">[查看班级]</td>
   
    <td width="52%"align="right">
    	<!--<a href="listLog.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/find.gif" class="img"/></a>
        <a href="addLog.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/add.gif" class="img"/></a>~-->
        
       <!-- <a href="#"><img src="${pageContext.request.contextPath}/crm_html/images/button/close.gif" class="img"/></a>-->
       <a href="#" onclick="back()"><img src="${pageContext.request.contextPath}/crm_html/images/button/tuihui.gif" /></a>
      
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/crm_html/images/tright.gif"/></td>
  </tr>
</table>

<table width="88%" border="0" class="emp_table" style="width:80%;">
  <tr>
    <td width="10%">班级名称：</td>
    <td width="20%"><input type="text" value="${info.name }"/></td>
    <td width="8%">所属类别：</td>
    <td width="62%"><input type="text" value="${name }"/></td>
  </tr>
  <tr>
    <td>开课时间：</td>
    <td><input type="text" value="<fmt:formatDate value='${info.begintime}' pattern="yyyy年MM月dd日"/>" /></td>
    <td>结业时间：</td>
    <td><input type="text" value="<fmt:formatDate value='${info.endtime }' pattern="yyyy年MM月dd日"/>" /></td>
  </tr>
  <tr>
    <td>其他说明：</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="4"><textarea name="textarea" cols="60" rows="10" value="${info.remark }"></textarea></td>
  </tr>
  <tr>
    <td colspan="4"><br />学生明细：</td>
  </tr>
  <tr>
    <td colspan="4">
      <table width="65%" cellspacing="0" class="emp_table" style="width:65%; margin-top:5px; margin-left:0px; border:1px solid #CCC;">
     
     
      <tr>
        <td width="15%" height="29" align="center">姓名</td>
        <td width="17%" align="center">QQ</td>
        <td width="27%" align="center">联系电话</td>
        <td width="17%" align="center">类型</td>
        <td width="24%" align="center">缴费方式</td>
      </tr>
      
      <c:forEach items="${list}" var="student">
      <tr>
        <td align="center">${student.name }</td>
        <td align="center">${student.qq }</td>
        <td align="center">${student.telephone }</td>
        <td align="center">升学/正招/留学</td>
        <td align="center">&nbsp;</td>
      </tr>
      </c:forEach>
      <tr>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
      </tr>
      <tr>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
      </tr>
      
      <tr>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
      </tr>
    </table>
    </td>
  </tr>
</table>
</body>
</html>
