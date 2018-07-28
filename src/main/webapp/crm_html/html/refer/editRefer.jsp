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
        $(function(){
        	var classid="${student.classid}";
        	var staffid="${student.staffid}";
        	alert(staffid);
		
        	/* var name="${student.coursetype}";
        	
        	var classiid="${student.classid}";
        	alert("type="+name+"classid="+classid);
             */
        	
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
    		$.get("${pageContext.request.contextPath}/course/list.do",function(data){
    			//获取menu的ul标签
    			
    			var $ul=$("#courseId");
    			 //alert(data);
    			//遍历数组
    			$(data).each(function(){
    				if("${student.coursetype}"==this.coursetypeid){
    					$ul.append($("<option value='"+this.coursetype+"' selected='seleceted'>"+this.coursename+"</option>"));
				}else{
					$ul.append($("<option value='"+this.coursetype+"'>"+this.coursename+"</option>"));

					}
    			});
    			
    				
    		},"json");
        	
    		$.get("${pageContext.request.contextPath}/class/list.do?id=${student.coursetype}",function(data){
    			//获取menu的ul标签
    			var $ul=$("#classId");
    			 //alert(data);
    			//遍历数组
    			$("#classId").html("");
    			$(data).each(function(){
					if(classid==this.classid){
						$ul.append($("<option value='"+this.classid+"' selected='seleceted'>"+this.name+"</option>"));
					}else{
						$ul.append($("<option value='"+this.classid+"'>"+this.name+"</option>"));
					}
    			});	
    		},"json");
    		
    		$.get("${pageContext.request.contextPath}/emp/list.do",function(data){
    			var $ul=$("#staffId");
    			$(data).each(function(){
					if(staffid==this.staffid){
						$ul.append($("<option value='"+this.staffid+"' selected='seleceted'>"+this.staffname+"</option>"));
						
					}else{
						$ul.append($("<option value='"+this.staffid+"'>"+this.staffname+"</option>"));
						
					}
    			});	
    		},"json");
        });
     
	function courseChange() {
		
	/* 	$("#courseId").html("");
		$.get("${pageContext.request.contextPath}/course/list.do", function(
				data) {
			
			var $ul = $("#courseId");
			
			$(data).each(
					function() {

						$ul.append($("<option value='"+this.coursetype+"'>"
								+ this.coursename + "</option>"));

					});

		}, "json"); */
		
		var id =this.value;
		
		alert(id);
		
		$.get("${pageContext.request.contextPath}/class/list.do?id="+ id,
						function(data) {
							var $ul = $("#classId");
							$("#classId").html("");
							$(data).each(
							function() {

						$ul.append($("<option value='"+this.classid+"'>"
																+ this.name
																+ "</option>"));

						});
		}, "json");

	}

	function back() {
		window.history.back(-1);
	}

	function updateRefer() {
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
<form id="formId" action="${pageContext.request.contextPath}/refer/editRefer.do" method="post">
	<input type="hidden" name="referid" id="referid"> 
	
	<table border="0" cellspacing="0" cellpadding="0" class="wukuang"
		width="100%">
		<tr>
			<td width="1%"><img src="${pageContext.request.contextPath}/crm_html/images/tleft.gif" /></td>
			<td width="44%" align="left">[添加/编辑咨询学生]</td>

			<td width="52%" align="right">
				<!--<a href="listLog.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/find.gif" class="img"/></a>
        <a href="addLog.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/add.gif" class="img"/></a>~-->

				<!-- <a href="#"><img src="${pageContext.request.contextPath}/crm_html/images/button/close.gif" class="img"/></a>-->
				<a><input type="submit" value="提交"/></a>
				<a href="#" onclick="updateRefer()"><img src="${pageContext.request.contextPath}/crm_html/images/button/save.gif" /></a> <a
				href="#" onclick="back()"><img src="${pageContext.request.contextPath}/crm_html/images/button/tuihui.gif" /></a>
			</td>
			<td width="3%" align="right"><img src="${pageContext.request.contextPath}/crm_html/images/tright.gif" /></td>
		</tr>
	</table>
	<table width="89%" class="emp_table" style="" align="left"
		cellspacing="0">
		<tr>
			<td width="120px" height="35" align="left">姓名：</td>
			<td width="300px" align="left"><input type="text" name="name" id="name" value="${student.name }"/></td>
			<td>状态：咨询中</td>
		</tr>
		<tr>
			<td>电话：</td>
			<td><input type="text"  name="telephone" id="telephone" value="${student.telephone}"/></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>QQ：</td>
			<td><input type="text" name="qq" id="qq" value="${student.qq }"/></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>咨询人：</td>
			<td><select id="staffId" name="staffid"></select></td>
			<td>&nbsp;</td>
		</tr>
		
		<tr>
			<td>意向级别：</td>
			<td><select name="intentionlevel" id="intentionlevel">
			
					<option>--请选择--</option>
					<option>A</option>
					<option>b</option>
					<option>c</option>
					<option>d</option>
			</select></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>意向学科：</td>
			<td><select id="courseId" onchange="courseChange()" name="coursetype">
			</select> &nbsp;&nbsp;&nbsp;意向班级： <select id="classId" name="classid"></select>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td height="41" align="left">来源：</td>
			<td align="left"><select name="source" id="source">
					<option>--请选择--</option>
					<option>上门</option>
					<option>网络</option>
					<option>电话</option>
					<option>其他</option>
			</select></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td align="left">备注：</td>
			<td align="left"><textarea cols="60" rows="5" name="remark">${student.remark }</textarea></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td colspan="3">&nbsp;</td>
		</tr>
	</table>
</form>



</body>
</html>
