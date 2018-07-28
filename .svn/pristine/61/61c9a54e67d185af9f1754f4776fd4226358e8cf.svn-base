<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath }/crm_html/css/sys.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
           function saveDept(){
        	   var deptname=document.getElementById("depname").value;
        	   window.location.href="http://localhost:8080/crm${pageContex.request.contextPath}/dept/save.do?deptname="+deptname;
        	   
           }
           
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
    <td width="1%"><img src="${pageContext.request.contextPath }/crm_html/images/tleft.gif"/></td>
    <td width="44%" align="left">[添加/编辑部门]</td>
   
    <td width="52%"align="right">
       <a href="#" onclick="saveDept()"><img src="${pageContext.request.contextPath }/crm_html/images/button/save.gif" /></a>
       <a href="#" onclick="back()"><img src="${pageContext.request.contextPath }/crm_html/images/button/tuihui.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath }/crm_html/images/tright.gif"/></td>
  </tr>
</table>

<table width="88%" border="0" class="emp_table" style="width:80%;">
  <tr>
    <td width="10%">部门名称：</td>
    <td width="20%"><input type="text" id="depname" value="${dept.depname }"/></td>
    <td width="70%"></td>
  </tr>
</table>
</body>
</html>
