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
		if (id != "") {
			$.get("${pageContext.request.contextPath}/post/selectBydepId.do?id="+id, function(
					data) {
				$("#postId").html("<option value=''>--请选择--</option>");
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
		if (id =="") {
			$("#postId").html("");
			$ul.html("<option value=''>--请选择--</option>");
		}
	}
	
	function queryCondition(){
		document.getElementById("formId").submit();
		
	}

</script>
</head>

<body >
 <table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%">
  <tr>
    <td width="1%"><img src="${pageContext.request.contextPath}/crm_html/images/tleft.gif"/></td>
    <td width="39%" align="left">[员工管理]</td>
   
    <td width="57%"align="right">
    	
		<a href="#" onclick="queryCondition()"><img src="${pageContext.request.contextPath}/crm_html/images/button/gaojichaxun.gif" /></a>
    	
    	<!-- 添加员工 -->
    	<a href="${pageContext.request.contextPath}/crm_html/html/staff/addStaff.jsp"><img src="${pageContext.request.contextPath}/crm_html/images/button/tianjia.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/crm_html/images/tright.gif"/></td>
  </tr>
</table>

<!-- 查询条件：添加或选择马上查询 -->
<form id="formId" action="${pageContext.request.contextPath}/staff/condition.do" method="post">
	<table width="88%" border="0" style="margin: 20px;" >
	  <tr>
	    <td width="80px">部门：</td>
	    <td width="200px">
	    	<select id="deptId" onchange="triggerpost()" name="deptid">
	    		<option value="">--请选择--</option>
	    	</select>
	    </td>
	    <td width="80px" >职务：</td>
	    <td width="200px" >
	    	<select id="postId" onchange="selectList()" name="postid">
	    	        <option value="">--请选择--</option>
	    	</select>
	    </td>
	    <td width="80px">姓名：</td>
	    <td width="200px" ><input type="text"  name="name"/></td>
	    <td ></td>
	  </tr>
	</table>
</form>

<table border="0" cellspacing="0" cellpadding="0" style="margin-top:5px;">
  <tr>
    <td ><img src="${pageContext.request.contextPath}/crm_html/images/result.gif"/></td>
  </tr>
</table>


<table width="100%" border="1" >
  <tr class="henglan" style="font-weight:bold;">
    <td width="10%" align="center">员工姓名</td>
    <td width="6%" align="center">性别</td>
    <td width="12%" align="center">入职时间</td>
    <td width="15%" align="center">所属部门</td>
    <td width="10%" align="center">职务</td>
    <td width="10%" align="center">编辑</td>
  </tr>
  
  <c:forEach items="${list }" var="emp">
       <tr class="tabtd2">
    <td align="center">${emp.staffname }</td>
    <td align="center">${emp.gender }</td>
    <td align="center"><fmt:formatDate value='${emp.ondutydate}' pattern="yyyy年MM月dd日"/></td>
    <td align="center">${emp.post.department.depname }</td>
    <td align="center">${emp.post.postname }</td>
  	<td width="7%" align="center"><a href="${pageContext.request.contextPath}/emp/editUI.do?id=${emp.staffid}"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"/></a></td>
  </tr>
  
  
  </c:forEach>
  <tr class="tabtd2">
    <td align="center">张某某</td>
    <td align="center">男</td>
    <td align="center">2004年1月11日</td>
    <td align="center">Java教学部</td>
    <td align="center">讲师</td>
  	<td width="7%" align="center"><a href="addOrEditStaff.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"/></a></td>
  </tr>
  <tr class="tabtd1">
    <td align="center">李某某</td>
    <td align="center">女</td>
    <td align="center">2012年4月1日</td>
    <td align="center">平面设计教学部</td>
    <td align="center">讲师</td>
  	<td width="7%" align="center"><a href="addOrEditStaff.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"/></a></td>
  </tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td align="right">
    	<span>第1/3页</span>
        <span>
        	<a href="#">[首页]</a>&nbsp;&nbsp;
            <a href="#">[上一页]</a>&nbsp;&nbsp;
            <a href="#">[下一页]</a>&nbsp;&nbsp;
            <a href="#">[尾页]</a>
        </span>
    </td>
  </tr>
</table>
</body>
</html>
