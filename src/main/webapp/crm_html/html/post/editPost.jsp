<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath }/crm_html/css/sys.css" type="text/css" rel="stylesheet" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/crm_html/js/jquery-1.8.3.js"></script>
<script>
	$(function() {

		//发送ajax请求
		$.get("${pageContext.request.contextPath}/dept/select.do", function(
				data) {
			//获取menu的ul标签
			var $ul = $("#deptId");
			//alert(data);
			//遍历数组
			$(data).each(
				function() {
			$ul.append($("<option value='"+this.depid+"'>"+ this.depname + "</option>"));
				});

		}, "json");
		$.get("${pageContext.request.contextPath}/post/select.do", function(
				data) {
			//获取menu的ul标签
			var $ul = $("#deptId");
			//alert(data);
			//遍历数组
			$(data).each(
				function() {
			$ul.append($("<option value='"+this.depid+"'>"+ this.depname + "</option>"));
				});

		}, "json");


	});
	function saveDept() {
		var postid=document.getElementById("postId").value;
		var depid = document.getElementById("deptId").value;
		var postname = document.getElementById("postname").value;
		alert("http://localhost:8080/crm${pageContex.request.contextPath}/post/add.do?postname="
				+postname+"&depid="+depid);
		window.location.href = "http://localhost:8080/crm${pageContex.request.contextPath}/post/update.do?postname="
				+postname+"&depid="+depid+"&postid="+postid;

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

	<table border="0" cellspacing="0" cellpadding="0" class="wukuang"
		width="100%">
		<tr>
			<td width="1%"><img
				src="${pageContext.request.contextPath}/crm_html/images/tleft.gif" /></td>
			<td width="44%" align="left">[添加/编辑职务]</td>

			<td width="52%" align="right"><a href="#" onclick="saveDept()"><img
					src="${pageContext.request.contextPath}/crm_html/images/button/save.gif" /></a>
				<a href="#" onclick="back()"><img
					src="${pageContext.request.contextPath}/crm_html/images/button/tuihui.gif" /></a>

			</td>
			<td width="3%" align="right"><img
				src="${pageContext.request.contextPath}/crm_html/images/tright.gif" /></td>
		</tr>
	</table>

	<table width="88%" border="0" class="emp_table" style="width: 80%;">
		<tr>
		        <input type="hidden" value="${post.postid }" id="postId"/>
			<td width="10%">部门名称：</td>
			<td width="20%">
			<select id="deptId">

			</select></td>
			<td width="8%">职务名称：</td>
			<td width="62%"><input type="text" id="postname" value="${post.postname }"/></td>
		</tr>
	</table>
</body>
</html>
