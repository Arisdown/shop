<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/crm_html/css/sys.css" type="text/css" rel="stylesheet" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/crm_html/js/jquery-1.8.3.js"></script>
<script>
	$(function() {

		//发送ajax请求
		$.get("${pageContext.request.contextPath}/class/select.do", function(
				data) {
			//获取menu的ul标签
			var $ul = $("#classId");
			//alert(data);
			//遍历数组
			$(data).each(
				function() {
			$ul.append($("<option value='"+this.classid+"'>"+ this.name + "</option>"));
				});

		}, "json");

	});
	
	function triggerpost(){
		var id = $("#classId").val();
		var $ul = $("#studentId");
		alert(id);
		if (id != "请选择") {
			$.get("${pageContext.request.contextPath}/student/select.do?id="+id, function(
					data) {
				$(data).each(
					function() {
					alert(this.name);
				$ul.append($("<option value='"+this.studentid+"'>"+this.name+"</option>"));
					});

			}, "json");
		}
		if (id =="请选择") {
			$("#studentId").html("");
			$ul.html("<option value='0'>--请选择--</option>");
		}
	}
	
	function saveGra(){
		alert("hello")
		var classId=document.getElementById("classId").value;
		
		var studentId=document.getElementById("studentId").value;
	
		var compname=document.getElementById("compname").value;
		
		var intime=document.getElementById("intime").value;
		
		var salary=document.getElementById("salary").value;
		
		var remark=document.getElementById("remark").value;
		
		var post= document.getElementById("post").value;
		
		
		 window.location.href="${pageContex.request.contextPath}/graduate/add.do?classid="
				+classId+"&studentid="+studentId+"&companyname="+companyname+"&entrytime="+intime+"&salary="
				+salary+"&post="+post+"&remark="+remark;

	}

	function back() {
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
    <td width="44%" align="left">[添加学员就业信息]</td>
   
    <td width="52%"align="right">
       <a href="#" onclick="saveGra()"><img src="${pageContext.request.contextPath}/crm_html/images/button/save.gif"/></a>
       <a href="#" onclick="back()"><img src="${pageContext.request.contextPath}/crm_html/images/button/tuihui.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/crm_html/images/tright.gif"/></td>
  </tr>
</table>
<form>
<table width="88%" border="0" class="emp_table" style="width:80%;">
  <tr>
    <td width="9%">班级：</td>
    <td width="19%"><select  id="classId" onchange=" triggerpost()"><option value='请选择'>--请选择--</option></select></td>
  </tr>
  <tr>
    <td width="9%">学生：</td>
    <td width="19%"><select id="studentId"><option value='请选择'>--请选择--</option></select></td>
  </tr>
  <tr>
    <td>就业公司：</td>
    <td><input type="text" id="compname"/></td>
  </tr>
  <tr>
    <td>薪资：</td>
    <td><input type="text" id="salary"/></td>
    </tr>
    <tr><td>岗位：</td>
           <td><input type="text" id="post"/></td>
    </tr>
  </tr>
  <tr>
    <td>入职时间：</td>
    <td><input type="text" id="intime"/></td>
  </tr>
  
  <tr>
    <td>备注：</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="4"><textarea cols="60" rows="10"  id="remark"></textarea></td>
  </tr>
</table>
</form>
</body>
</html>
