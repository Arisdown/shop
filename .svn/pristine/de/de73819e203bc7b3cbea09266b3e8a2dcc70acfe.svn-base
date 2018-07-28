<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/crm_html/css/sys.css" type="text/css" rel="stylesheet" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/crm_html/js/jquery-1.8.3.js"></script>
<script type="text/javascript">


	function back() {

		window.history.back(-1);

	}

	function queryCondition() {

		document.getByElementById("formId").submit();

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
    <td width="44%" align="left">[查询课程]</td>
   
    <td width="52%"align="right">
    	<!--<a href="listLog.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/find.gif" class="img"/></a>
        <a href="addLog.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/add.gif" class="img"/></a>~-->
        
       <!-- <a href="#"><img src="${pageContext.request.contextPath}/crm_html/images/button/close.gif" class="img"/></a>-->
       <a href="#" onclick="queryCondition()"><img src="${pageContext.request.contextPath}/crm_html/images/button/find.gif" /></a>
       <a href="#" onclick="back()"><img src="${pageContext.request.contextPath}/crm_html/images/button/tuihui.gif" /></a>
      
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/crm_html/images/tright.gif"/></td>
  </tr>
</table>
<form action="${pageContext.request.contextPath}/course/query.do" id="formId" method="post">
<table width="88%" border="0" class="emp_table" style="width:80%;">
  <tr>
    <td width="10%">课程类别：</td>
    <td><input type="text" size="30" name="coursename"/></td>
  </tr>
  <tr>
    <td >课程简介：</td>
    <td ><input type="text"  size="30" name="remark"/></td>
  </tr>
  <tr>  
    <td >总学时：</td>
    <td ><input type="text" size="12" name="mintotal"/> 至 <input type="text" size="12" name="maxtotal"/></td>
  </tr>
  <tr>
    <td>课程费用：</td>
    <td ><input type="text" size="12" name="mincost"/> 至 <input type="text" size="12" name="maxcost"/></td>
  </tr>
  <tr><td><input type="submit" value="查询"></td></tr>
</table>

</form>
</body>
</html>
