<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>



<link href="${pageContext.request.contextPath}/crm_html/css/sys.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
function queryCondition(){
	document.getElementById("formId").submit();
	
}
</script>
</head>

<body>
	<table border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td class="topg"></td>
		</tr>
	</table>

	<table border="0" cellspacing="0" cellpadding="0" class="wukuang">
		<tr>
			<td width="1%"><img src="${pageContext.request.contextPath}/crm_html/images/tleft.gif" /></td>
			<td width="33%" align="left">[咨询学生管理]</td>

			<td width="63%" align="right">
				<!-- 添加咨询学生 --> 
				<a href="#" onclick="queryCondition()"><img src="${pageContext.request.contextPath}/crm_html/images/button/gaojichaxun.gif" /></a>
				<a class="butbg" href="${pageContext.request.contextPath}/crm_html/html/refer/addRefer.jsp"><img
					src="${pageContext.request.contextPath}/crm_html/images/button/tianjia.gif" /></a> <!-- 高级查询 
        <a class="butbg"  href="#"><img src="${pageContext.request.contextPath}/crm_html/images/button/gaojichaxun.gif" /></a>
        -->
			</td>
			<td width="3%" align="right"><img src="${pageContext.request.contextPath}/crm_html/images/tright.gif" /></td>
		</tr>
	</table>

	<!-- 查询条件：添加或选择马上查询 -->
	<form action="${pageContext.request.contextPath}/refer/queryByCondition.do" id="formId"  method="post">
		<table width="88%" border="0" style="margin: 20px;">
			<tr>
				<td width="80px">查询条件：</td>
				<td width="300px"><input size="20" name="query"/>（姓名|电话|QQ）</td>
				<td></td>
			</tr>
		</table>
	</form>
<form action="${pageContext.request.contextPath}/refer/updateRefer.do" method="post">
	<table border="0" cellspacing="0" cellpadding="0"
		style="margin-top: 5px;">
		<tr>
			<td><img src="${pageContext.request.contextPath}/crm_html/images/result.gif" /></td>
		</tr>
	</table>
	<table width="100%" border="1">

		<tr class="henglan" style="font-weight: bold;">
			<td width="80px" align="center">姓名</td>
			<td width="9%" align="center">电话</td>
			<td width="11%" align="center">QQ</td>
			<td width="15%" align="center">班级意向</td>
			<td width="17%" align="center">状态</td>
			<td width="10%" align="center">营销人员</td>
			<td width="8%" align="center">查看</td>
			<td width="8%" align="center">编辑</td>
			<td width="8%" align="center">跟踪</td>
			<td width="8%" align="center">录入学籍</td>
		</tr>
		<c:if test="${not empty list}">
			<c:forEach items="${list}" var="refer">
				<tr class="tabtd2">
					<td align="center">${refer.name }</td>
					<td align="center">${refer.telephone }</td>
					<td align="center">${refer.qq }</td>
					<td align="center">${refer.classinfo.name}</td>
					<td align="center"><c:if test="${refer.status=='1' }">
                                                            首次咨询
                                </c:if> <c:if test="${refer.status=='2' }">
                                                            准备报名
                                </c:if></td>
					<td align="center">${refer.staff.staffname }</td>
					<td width="8%" align="center"><a
						href="${pageContext.request.contextPath}/refer/referInfo1.do?id=${refer.referid}&name=${refer.staff.staffname }&staffid=${refer.staff.staffid}"><img
							src="${pageContext.request.contextPath}/crm_html/images/button/view.gif" class="img" /></a></td>
					<td width="8%" align="center"><a
						href="${pageContext.request.contextPath }/refer/referInfo.do?id=${refer.referid}&name=${refer.staff.staffname }"><img
							src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img" /></a></td>
					<td width="8%" align="center"><a
						href="${pageContext.request.contextPath}/follow/query.do?referid=${refer.referid}"><img
							src="${pageContext.request.contextPath}/crm_html/images/button/new.gif" class="img" /></a></td>
					<td width="8%" align="center"><a
						href="${pageContext.request.contextPath}/crm_html/refer/addStudent.jsp"><img
							src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img" /></a></td>
				</tr>
			</c:forEach>
		</c:if>
		<c:if test="${empty list}">
			<tr>
				<td>${msg}<td>
			</tr>
		</c:if>
		<tr class="tabtd2">
			<td align="center">张三</td>
			<td align="center">18888888888</td>
			<td align="center">1234567</td>
			<td align="center">Java基础班</td>
			<td align="center">准备报名</td>
			<td align="center">张华</td>
			<td width="8%" align="center"><a href="${pageContext.request.contextPath}/crm_html/refer/queryRefer.jsp"><img
					src="${pageContext.request.contextPath}/crm_html/images/button/view.gif" class="img" /></a></td>
			<td width="8%" align="center"><a
				href="${pageContext.request.contextPath}/crm_html/refer/addOrEditRefer.jsp"><img
					src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img" /></a></td>
			<td width="8%" align="center"><a
				href="${pageContext.request.contextPath}/crm_html/follow/addOrEditFollow.jsp"><img
					src="${pageContext.request.contextPath}/crm_html/images/button/new.gif" class="img" /></a></td>
			<td width="8%" align="center"><a href="${pageContext.request.contextPath}/crm_html/refer/addStudent.jsp"><img
					src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img" /></a></td>
		</tr>
		<tr class="tabtd1">
			<td align="center">李四</td>
			<td align="center">18777777777</td>
			<td align="center">987654321</td>
			<td align="center">Java就业班</td>
			<td align="center">首次咨询</td>
			<td align="center">刘淼</td>
			<td width="8%" align="center"><a href="${pageContext.request.contextPath}/crm_html/refer/queryRefer.html"><img
					src="${pageContext.request.contextPath}/crm_html/images/button/view.gif" class="img" /></a></td>
			<td width="8%" align="center"><a
				href="${pageContext.request.contextPath}/crm_html/refer/addOrEditRefer.html"><img
					src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img" /></a></td>
			<td width="8%" align="center"><a
				href="${pageContext.request.contextPath}/crm_html/follow/addOrEditFollow.html"><img
					src="${pageContext.request.contextPath}/crm_html/images/button/new.gif" class="img" /></a></td>
			<td width="8%" align="center"><a href="${pageContext.request.contextPath}/crm_html/html/refer/addStudent.jsp"><img
					src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img" /></a></td>
		</tr>
	</table>
	<table border="0" cellspacing="0" cellpadding="0" align="center">
		<tr>
			<td align="right"><span>第1/3页</span> <span> <a href="#">[首页]</a>&nbsp;&nbsp;
					<a href="#">[上一页]</a>&nbsp;&nbsp; <a href="#">[下一页]</a>&nbsp;&nbsp;
					<a href="#">[尾页]</a>
			</span></td>
		</tr>
	</table>
</form>
</body>
</html>
