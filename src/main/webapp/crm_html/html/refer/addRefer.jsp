<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>

<link href="${pageContext.request.contextPath}/crm_html/css/sys.css" type="text/css" rel="stylesheet" />
<style type="text/css">
select option {
	width: 200px;
}
</style>
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
	function courseChange() {
		var id = $("#courseId").val();
		
		var $ul = $("#classId");
	
		if (id != "请选择") {
			$.get("${pageContext.request.contextPath}/class/list.do?id="+ id,
			      function(data) {
								//获取menu的ul标签
								$("#classId").html("");
								//alert(data);
								//遍历数组
								$(data)
										.each(
												function() {
													$ul
															.append($("<option value='"+this.classid+"'>"
																	+ this.name
																	+ "</option>"));
												});
							}, "json");
		}
		if (id == "请选择") {
			$("#classId").html("");
			$ul.html("<option value='0'>--请选择--</option>");
		}
	}

	function saveRefer() {
		/*无效
		var name=$("#name").val();
		var telephone=$("#telephone").val();
		var qq=document.getElementById("qq").value();
		var intentionlevel=document.getElementById("intentionlevel").value();
		var coursetype=document.getElementById("courseId").value();
		var classid=document.getElementById("classId").value();
		var remark=document.getElementById("remark").value();
		var source=document.getElementById("source").value();
		alert("name="+name+"&telephone="+telephone+"&qq="+qq+"&intentionlevel="+intentionlevel+"&coursetype="+coursetype+"&classid="+classid+"&source="+source+"&remark="+remark);
		
		
		window.location.href="http://localhost:8080/crm/${pageContext.request.contextPath}/refer/addRefer.do?name="+name+"&telephone="+telephone+"&qq="+qq+"&intentionlevel="+intentionlevel+"&coursetype="+coursetype+"&classid="+classid+"&source="+source+"&remark="+remark; */
		
		document.getElementById("formId").submit();
		
	}
</script>
</head>

<body class="emp_body">
	<table border="0" cellspacing="0" cellpadding="0" width="100%">
		<tr>
			<td class="topg"></td>
		</tr>
	</table>
<form id="formId" action="${pageContext.request.contextPath}/refer/addRefer.do" method="post">
	<table border="0" cellspacing="0" cellpadding="0" class="wukuang"
		width="100%">
		<tr>
			<td width="1%"><img src="${pageContext.request.contextPath}/crm_html/images/tleft.gif" /></td>
			<td width="44%" align="left">[添加/编辑咨询学生]</td>

			<td width="52%" align="right">
				<!--<a href="listLog.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/find.gif" class="img"/></a>
        <a href="addLog.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/add.gif" class="img"/></a>~-->

				<!-- <a href="#"><img src="${pageContext.request.contextPath}/crm_html/images/button/close.gif" class="img"/></a>-->
				<a href="#" onclick="saveRefer()"><img
					src="${pageContext.request.contextPath}/crm_html/images/button/save.gif" /></a> <a href="#"><img
					src="${pageContext.request.contextPath}/crm_html/images/button/tuihui.gif" /></a>
			</td>
			<td width="3%" align="right"><img src="${pageContext.request.contextPath}/crm_html/images/tright.gif" /></td>
		</tr>
	</table>
	<table width="89%" class="emp_table" style="" align="left"
		cellspacing="0">
		<tr>
			<td width="120px" height="35" align="left">姓名：</td>
			<td width="300px" align="left"><input type="text" id="name" name="name"/></td>
			<td>状态：咨询中</td>
		</tr>
		<tr>
			<td>电话：</td>
			<td><input type="text" id="telephone" name="telephone"/></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>QQ：</td>
			<td><input type="text" id="qq" name="qq"/></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>意向级别：</td>
			<td><select id="intentionlevel" name="intentionlevel">
					<option value="请选择">--请选择--</option>
					<option value="A">A</option>
					<option value="B">B</option>
					<option value="C">C</option>
					<option value="D">D</option>
			</select></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>意向学科：</td>
			<td><select id="courseId" name="coursetype" onchange="courseChange()">
					<option value="请选择">--请选择--</option>
			</select> &nbsp;&nbsp;&nbsp; 意向班级： <select id="classId" name="classid">
					<option value="请选择">--请选择--</option>
			</select></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td height="41" align="left">来源：</td>
			<td align="left"><select id="source" name="source">
					<option value="请选择">--请选择--</option>
					<option>上门</option>
					<option>网络</option>
					<option>电话</option>
					<option>其他</option>
			</select></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td align="left">备注：</td>
			<td align="left"><textarea cols="60" rows="5" id="remark" name="remark"></textarea></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td colspan="3">&nbsp;</td>
		</tr>
	</table>
	</form>
	<span id="msg">${msg }</span>

</body>
</html>
