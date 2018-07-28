<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>更改口令</title>
<link href="../../css/sys.css" type="text/css" rel="stylesheet" />
	<style>
		.updpwd{
			background-color: #2ae;
		}
		.login_btn{
			background-color: #9be;
			width: 99px;
			font-size: 14px;
			font-family: 微软雅黑;
		}
		.upd_pwd_msg{
			font-size: 14px;
			text-align: right;
		}
	</style>
	<script  type="text/javascript">
	        
		function closeWindow(flag){
			var password=document.getElementById("pass").value;
			var newpass=document.getElementById("newpass").value;
			var repass=document.getElementById("repass").value;
			if(flag == 'change'){
				alert("${pageContext.request.contextPath}/staff/update.do?password="+password+"&newPass="+newpass+"&rePass="+repass);
				window.location.href="${pageContext.request.contextPath}/staff/update.do?password="+password+"&newPass="+newpass+"&rePass="+repass;
			}
			parent.window.opener = null;
			parent.close();
		}
	</script>
</head>

<body class="updpwd">
	<span class="upd_pwd_msg">
	 <br/>
	   &nbsp;&nbsp;原始密码：<input type="text" name="password" id="pass"/><br/><br/>
	   &nbsp;&nbsp;新&nbsp;密&nbsp;码：<input type="text" name="newPass" id="newpass"/><span>${errorPa}</span><br/><br/>
	   &nbsp;&nbsp;确认密码：<input type="text" name="rePass" id="repass"/><br/><br/>
	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>${msg}</span>
	  <br><br>
	 </span>
	&nbsp;&nbsp;<input class="login_btn" type="submit" value="修    改" onclick="closeWindow('change')"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="login_btn" type="submit" value="关    闭" onclick="closeWindow()"/>
</body>
</html>
