<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/crm_html/css/sys.css" type="text/css" rel="stylesheet" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/crm_html/js/jquery-1.8.3.js"></script>
<script>
$(function() {

		//$.post("${pageContext.request.contextPath}/course/list.do",function(data){
		//	 alert(data);
		//	$("#courseId").append("<option>----请选择---</option>");
		//	for(var i=0;data.length;i++){
		//		var option="<option value='";
      		//		option+=data[i].coursetypeid"'';
      		//		option+=">"+data[i].coursename+"</option>";
		//		$("#courseId").append(option);
		//	}

		//},"json");

		//发送ajax请求
		$.get("${pageContext.request.contextPath}/course/list.do", function(
				data) {
			//获取menu的ul标签
			var $ul = $("#courseId");
			//alert(data);
			//遍历数组
			$(data).each(
					function() {
						$ul.append($("<option value='"+this.coursetypeid+"'>"
								+ this.coursename + "</option>"));
					});

		}, "json");

	});

	function back() {

		window.history.back(-1);

	}

	function editInfo() {

		document.getByElementById("upload").submit();

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
			<td width="44%" align="left">[上传课表]</td>

			<td width="52%" align="right">
				<!--<a href="listLog.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/find.gif" class="img"/></a>
        <a href="addLog.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/add.gif" class="img"/></a>~-->
				<input type="submit" value="更新"> <!-- <a href="#"><img src="${pageContext.request.contextPath}/crm_html/images/button/close.gif" class="img"/></a>-->
				<a href="#" onclick="editInfo()"><img
					src="${pageContext.request.contextPath}/crm_html/images/button/save.gif" /></a>
				<a href="#" onclick="back()"><img
					src="${pageContext.request.contextPath}/crm_html/images/button/tuihui.gif" /></a>

			</td>
			<td width="3%" align="right"><img
				src="${pageContext.request.contextPath}/crm_html/images/tright.gif" /></td>
		</tr>
	</table>
	<form enctype="multipart/form-data" method="post" 
				action="${pageContext.request.contextPath}/upload/upload.do"
				id="upload">
	        <input type="hidden" value="${list.classid }" name="classid" />
	<table width="88%" border="0" class="emp_table" style="width: 80%;">
		<tr>
			<td width="10%">班级名称：</td>
			<td width="20%"><input type="text"  id="name"
				value="${list.name }" /></td>
			<td width="8%">课程类别：</td>
			<td width="62%"><select id="courseId" ></select></td>
		</tr>
		<tr>
			<td>上次上传时间：</td>
			<td><input type="text"  id="begintime"
				value="<fmt:formatDate value='${list.uploadtime }' pattern="yyyy年MM月dd日"/>" /></td>
		</tr>
		<tr>
		
				
			<td>选择课表：</td>
			<td><input type="file" value="请上传文件" id="fileId" name="uploadpath" /></td>
			<td><span id="msg"></span></td>
			<td><input type="submit" value="保存"></td>
			
		</tr>

	</table>
	</form>

</body>
<script type="text/javascript">
			function upload(file){
				var value=document.getElementById("fileId").value;
				alert(value);
			
				$.ajax({
					url:"${pageContext.request.contextPath}/upload/upload.do",
					type:"post",
					dataType:"json",
					data:{name:value},
					success:function(data){
						alert(data);
						if(data=="success"){
							$("#msg").html("上传成功");
						}else{
							$("#msg").html("请重新上传");
						}
					}
					
				});
			}
		
		</script>
</html>
