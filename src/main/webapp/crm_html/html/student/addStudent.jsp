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
	
	
	function changeClass() {
		var classid = $("#courseId").val();
		var $cl = $("#haha");
		alert(classid);
		if (id != "请选择") {
			$.get(
				"${pageContext.request.contextPath}/class/list.do?id="+classid,
	
							function(data) {
								
								
								$(data)
										.each(
												function() {
													$cl
															.append($("<option value='"+this.classid+"'>"
																	+ this.name
																	+ "</option>"));
												});
							}, "json");
		}
		if (id == "请选择") {
			$("#haha").html("");
			$cl.html("<option value='请选择'>--请选择--</option>");
		}
	}

	function saveRefer() {
		document.getElementById("formId").submit();
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
<form action="${pageContext.request.contextPath }/student/add.do" id="formId">
<table border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%">
  <tr>
    <td width="1%"><img src="${pageContext.request.contextPath }/crm_html/images/tleft.gif"/></td>
    <td width="44%" align="left">[编辑正式学员]</td>
   
    <td width="52%"align="right">
    	<!--<a href="listLog.html"><img src="${pageContext.request.contextPath }/crm_html/images/button/find.gif" class="img"/></a>
        <a href="addLog.html"><img src="${pageContext.request.contextPath }/crm_html/images/button/add.gif" class="img"/></a>~-->
        
       <!-- <a href="#"><img src="${pageContext.request.contextPath }/crm_html/images/button/close.gif" class="img"/></a>-->
       <a href="#" onclick="saveRefer()"><img src="${pageContext.request.contextPath }/crm_html/images/button/save.gif" /></a>
       <a href="#" onclick="back()"><img src="${pageContext.request.contextPath }/crm_html/images/button/tuihui.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath }/crm_html/images/tright.gif"/></td>
  </tr>
</table>

<table width="88%" class="emp_table">
  <tr>
    <td width="80px" align="left">姓名：</td>
    <td width="200px" align="left"><input type="text" name="name"/></td>
    <td width="80px" align="left">性别：</td>
    <td align="left"><input type="radio" name="gender"/>男<input type="radio" name="gender"/>女</td>
  </tr>
  <tr>
    <td align="left">应付学费：</td>
    <td align="left"><input type="text" name="musttuition" /></td>
    <td align="left">实付学费：</td>
    <td align="left"><input type="text" name="actualtuition" /></td>
  </tr>
  <tr>
    <td align="left">身份证号：</td>
    <td align="left"><input type="text" name="identify"/></td>
    <td align="left">手机号：</td>
    <td align="left"><input type="text" name="telephone" /></td>
  </tr>
  <tr>
    <td align="left">QQ号：</td>
    <td align="left"><input type="text" name="qq"/></td>
    <td align="left">邮箱：</td>
    <td align="left"><input type="text" name="email" /></td>
  </tr>
  <tr>
    <td align="left">就读班级：</td>
    <td  align="left"  colspan="3">
       类别：<select id="courseId" name="coursetype" onchange="changeClass()"><option value="请选择">--请选择--</option></select> 
       班级：<select id="haha" name="classid"><option value="请选择">--请选择--</option></select></td>
  </tr>
  <tr>
    <td align="left">毕业学校：</td>
    <td align="left"><input type="text" name="school"/></td>
    <td align="left">学历：</td>
    <td align="left">
    	<select name="education"><option>====选择学历====</option>
    	              <option value="专科">专科</option>
    	             <option value="本科">本科</option>
    	             
    	             <option value="研究生">研究生</option>
    	             <option value="博士生">博士</option>
    	             <option value="博士后">博士后</option></select> 
    	专业<input type="text" size="17" name="professional"/>
    </td>
  </tr>
  <tr>
    <td align="left">身份证地址：</td>
    <td align="left" colspan="3"><input name="identityaddress" size="60" /></td>
  </tr>
  <tr>
    <td align="left">在京地址：</td>
    <td align="left" colspan="3"><input name="address" size="60" /></td>
  </tr>
  <tr>
    <td align="left">学员描述：</td>
    <td align="left" colspan="3"><input name="remark" size="60" /></td>
  </tr>
  <tr>
    <td colspan="6"><br />出门在外，如果发生意外，我们将通过下面的信息跟学院的家长联系</td>
    </tr>
   <tr>
    <td align="left">家庭联系电话：</td>
    <td align="left"><input type="text" name="hometelephone"/></td>
    <td align="left">家庭联系人：</td>
    <td align="left"><input type="text" name="homecontact" /></td>
  </tr>
</table>
</form>

</body>
</html>
