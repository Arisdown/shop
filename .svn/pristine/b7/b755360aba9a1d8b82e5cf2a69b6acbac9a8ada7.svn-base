<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		

	});
	function triggerpost(){
		var id = $("#deptId").val();
		var $ul = $("#postId");
		alert(id);
		if (id != "请选择") {
			$.get("${pageContext.request.contextPath}/post/selectBydepId.do?id="+id, function(
					data) {
				$("#postId").html("");
				//获取menu的ul标签
				var $ul = $("#postId");
				//alert(data);
				//遍历数组
				$(data).each(
					function() {
				$ul.append($("<option value='"+this.postid+"'>"+ this.postname + "</option>"));
					});

			}, "json");
		}
		if (id =="请选择") {
			$("#postId").html("");
			$ul.html("<option value='0'>--请选择--</option>");
		}
	}

	function saveEmp() {
		var postid=document.getElementById("postId").value;
		var loginname = document.getElementById("loginname").value;
		var name= document.getElementById("name").value;
		var radios=document.getElementsByName("gender");
		var gender="";
	        for(var i=0;i<radios.length;i++)
	        {
	            if(radios[i].checked==true)
	            {
	                gender=radios[i].value;
	            }
	        }
		var intime= document.getElementById("intime").value;
		var loginpwd= document.getElementById("loginpwd").value;
		
		/*  alert("http://localhost:8080/crm${pageContex.request.contextPath}/emp/update.do?loginname="
					+loginname+"&postid="+postid+"&staffname="+name+"&gender="+gender+
					"&ondutydate="+intime+"&loginpwd="+loginpwd+"&staffid="+staffid);  */
		window.location.href = "http://localhost:8080/crm${pageContex.request.contextPath}/emp/add.do?loginname="
				+loginname+"&postid="+postid+"&staffname="+name+"&gender="+gender+
				"&ondutydate="+intime+"&loginpwd="+loginpwd;

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
    <td width="44%" align="left">[添加/编辑员工]</td>
   
    <td width="52%"align="right">
       <a href="#" onclick="saveEmp()"><img src="${pageContext.request.contextPath}/crm_html/images/button/save.gif" /></a>
       <a href="#" onclick="back()"><img src="${pageContext.request.contextPath}/crm_html/images/button/tuihui.gif" /></a>
      
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/crm_html/images/tright.gif"/></td>
  </tr>
</table>

<table width="88%" border="0" class="emp_table" style="width:80%;">
 <tr>
 

    <td>登录名：</td>
    <td><input type="text" value="${emp.loginname }" id="loginname"/></td>
    <td>登陆密码：</td>
    <td><input type="text" value="${emp.loginpwd }" id="loginpwd"/></td>
  </tr>
 <tr>
    <td>姓名：</td>
    <td><input type="text" value="${emp.staffname }" id="name"/></td>
    <td>性别：</td>
    <td>
           <input type="radio"   id="gender" name="gender" value="男"/>男
           <input type="radio"   id="gender" name="gender" checked value="女"/>女
    </td>
  </tr>
 <tr>
    <td width="10%">所属部门：</td>
    <td width="20%"><select id="deptId" onchange="triggerpost()"><option value='请选择'>--请选择--</option></select></td>
    <td width="8%">职务：</td>
    <td width="62%"><select id="postId"><option value='请选择'>--请选择--</option></select></td>
  </tr>
  <tr>
    <td width="10%">入职时间：</td>
    <td width="20%"><input id="intime" type="text" value="<fmt:formatDate value='${emp.ondutydate}' pattern="yyyy年MM月dd日"/>" /></td>
    <td width="8%"></td>
    <td width="62%"></td>
  </tr>
</table>
</body>
</html>
