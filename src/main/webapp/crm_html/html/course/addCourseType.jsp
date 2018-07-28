<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/crm_html/css/sys.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
      function updateinfo(){
    	  document.getElementById("formId").submit();
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
<form id="formId" action="${pageContext.request.contextPath}/course/add.do" method="post" name="courseType">
<input type="hidden" name="coursetypeid" value="${type.coursetypeid }">
<table border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%">
  <tr>
    <td width="1%"><img src="${pageContext.request.contextPath}/crm_html/images/tleft.gif"/></td>
    <td width="44%" align="left">[添加/编辑课程类别]</td>
   
    <td width="52%"align="right">
       <a href="#" onclick="updateinfo()"><img src="${pageContext.request.contextPath}/crm_html/images/button/save.gif" /></a>
       <a href="#" onclick="back()"><img src="${pageContext.request.contextPath}/crm_html/images/button/tuihui.gif" /></a>
      
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/crm_html/images/tright.gif"/></td>
  </tr>
</table>

<table width="88%" border="0" class="emp_table" style="width:80%;">
  <tr>
    <td width="10%">课程类别：</td>
    <td width="20%"><input type="text" value="${type.coursename}" name="coursename"/></td>
    <td width="8%">总学时：</td>
    <td width="62%"><input type="text" value="${type.total }" name="total"/></td>
  </tr>
  <tr>
    <td>课程费用：</td>
    <td><input type="text" value="${type.coursecost }" name="coursecost"/></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>课程介绍模板：</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="4"><textarea cols="60" rows="10" name="remark">${type.remark }</textarea></td>
  </tr>
</table>
</form>
</body>
</html>
