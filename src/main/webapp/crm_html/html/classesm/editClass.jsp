<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/crm_html/css/sys.css"
	type="text/css" rel="stylesheet" />
<script type="text/javascript">
	function back() {

		window.history.back(-1);

	}
	
	function editInfo(){
		alert("edit");
		document.getByElementById("formid").submit();  
	        alert(11);
	}
</script>
</head>

<body class="emp_body">
	<table border="0" cellspacing="0" cellpadding="0" width="100%">
		<tr>
			<td class="topg"></td>
		</tr>
	</table>
	<form id="formid" action="${pageContext.request.contextPath}/classinfo/edit.do"
		method="post">
		<input type="hidden" value="${list.classid}" name="classid">
		<table border="0" cellspacing="0" cellpadding="0" class="wukuang"
			width="100%">
			<tr>
				<td width="1%"><img
					src="${pageContext.request.contextPath}/crm_html/images/tleft.gif" /></td>
				<td width="44%" align="left">[添加/编辑班级]</td>

				<td width="52%" align="right">
					<!--<a href="listLog.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/find.gif" class="img"/></a>
        <a href="addLog.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/add.gif" class="img"/></a>~-->
                                        <input type="submit" value="更新">
					<!-- <a href="#"><img src="${pageContext.request.contextPath}/crm_html/images/button/close.gif" class="img"/></a>-->
					<a href="#" onclick="editInfo()"><img
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
				<td width="10%">班级名称：</td>
				<td width="20%"><input type="text" name="name" id="name"
					value="${list.name }" /></td>
				<td width="8%">课程类别：</td>
				<td width="62%"><input type="text" value="${name }" disabled /></td>
			</tr>
			<tr>
				<td>开课时间：</td>
				<td><input type="text" name="begintime" id="begintime"
					value="<fmt:formatDate value='${list.begintime }' pattern="yyyy年MM月dd日"/>" /></td>
				<td>结业时间：</td>
				<td><input type="text" name="endtime" id="endtime"
					value="<fmt:formatDate value='${list.endtime }' pattern="yyyy年MM月dd日"/>" /></td>
			</tr>
			<tr>
				<td>班级人数：</td>
				<td><input type="text" name="totalcount"
					value="${list.totalcount }" /></td>
				<!--  <td>班主任</td>
    <td>
    	<select></select>
    </td> -->
			</tr>
			<tr>
				<td>其他说明：</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td colspan="4"><textarea cols="60" rows="10" name="remark"
						id="remark"></textarea></td>
			</tr>
		</table>
	</form>
</body>
</html>
