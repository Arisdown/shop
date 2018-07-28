<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/crm_html/css/sys.css" type="text/css"/>
<script type="text/javascript">
         function download(){
        	 document.getElementById("download").submit();
         }

</script>
<title>班级管理</title>
</head>

<body>
<!--距离页面顶端5px-->
<table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="topg"></td>
  </tr>
</table>
<form name="createForm" action="" method="post">
<table border="0" cellspacing="0" cellpadding="0" class="wukuang">
  <tr>
    <td width="1%"><img src="${pageContext.request.contextPath}/crm_html/images/tleft.gif"/></td>
    <td width="20%" align="left">[班级管理]</td>
    <td width="42%"align="center">&nbsp;</td>
    <td width="36%"align="right">
    	<a href="${pageContext.request.contextPath}/crm_html/html/classesm/addClass.jsp"><img src="${pageContext.request.contextPath}/crm_html/images/button/tianjia.gif" class="img"/></a>
        <a href="queryClass.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/gaojichaxun.gif" class="img"/></a>
    </td>
    <td width="1%"><img src="${pageContext.request.contextPath}/crm_html/images/tright.gif"/></td>
  </tr>
</table>
</form>
<table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="topg"></td>
  </tr>
</table>
<table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td ><img src="${pageContext.request.contextPath}/crm_html/images/result.gif"/></td>
  </tr>
</table>
<table width="97%" border="1">
<thead>
  <tr class="henglan" style="font-weight:bold;">
	<th width="10%" align="center">班级名称</th>
    <th width="10%" align="center">所属课程</th>
    <th width="10%" align="center">开班时间</th>
    <th width="10%" align="center">毕业时间</th>
    <th width="5%" align="center">状态</th>
    <th width="5%" align="center">学生总数</th>
    <th width="5%" align="center">升学数</th>
    <th width="5%" align="center">留级数</th>
    <th width="5%" align="center">编辑</th>
	<th width="5%" align="center">查看</th>
	<th width="10%" align="center">课表</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${list}" var="info">
  
  <tr>
    <td align="center">${info.name }</td>
    <td align="center">${info.courseType.coursename }</td>
    <td align="center"><fmt:formatDate value='${info.begintime }' pattern="yyyy年MM月dd日"/></td>
    <td align="center"><fmt:formatDate value='${info.endtime }' pattern="yyyy年MM月dd日"/></td>
    <td align="center">${info.status }</td>
    <td align="center">${info.totalcount }</td>
    <td align="center">${info.upgradecount}</td>
    <td align="center">${info.changecount}</td>
    <td align="center"><a href="${pageContext.request.contextPath}/classinfo/editUI.do?id=${info.classid}&name=${info.courseType.coursename }&typeid=${info.courseType.coursetypeid }"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"/></a></td>
    <td align="center"><a href="${pageContext.request.contextPath}/classinfo/detail.do?id=${info.classid}&name=${info.courseType.coursename }"><img src="${pageContext.request.contextPath}/crm_html/images/button/view.gif" class="img"/></a></td>
    <td align="center"><c:if test="${not empty info.uploadpath }"><form action="${pageContext.request.contextPath}/downFile.do" id="download" method="get"><input type="hidden" value="${info.uploadfilename }" name="filename"><a href="${pageContext.request.contextPath}/classinfo/uploadUI.do?id=${info.classid}&name=${info.courseType.coursename }&typeid=${info.courseType.coursetypeid }">上传</a>&nbsp;&nbsp;<a href="javascript:void(0)" onclick="document.getElementById('download').submit();">下载</a></form></c:if><c:if test="${empty info.uploadpath }"><a href="${pageContext.request.contextPath}/classinfo/uploadUI.do?id=${info.classid}&name=${info.courseType.coursename }&typeid=${info.courseType.coursetypeid }">上传</a>&nbsp;&nbsp;暂无</c:if></td>
  </tr>
  </c:forEach>
  <tr class="tabtd1">
    <td align="center">JAVA0805</td>
    <td align="center">Java基础班</td>
    <td align="center">2012-08-05</td>
    <td align="center">2012-12-05</td>
    <td align="center">已开课</td>
    <td align="center">85</td>
    <td align="center">78</td>
    <td align="center">7</td>
    <td align="center"><a href="addOrEditClass.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"/></a></td>
    <td align="center"><a href="viewClass.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/view.gif" class="img"/></a></td>
  </tr>
  <tr class="tabtd2">
    <td align="center">JAVA0805</td>
    <td align="center">Java就业班</td>
    <td align="center">2012-08-05</td>
    <td align="center">2012-12-05</td>
    <td align="center">未开课</td>
    <td align="center">85</td>
    <td align="center">78</td>
    <td align="center">7</td>
    <td align="center"><a href="addOrEditClass.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"/></a></td>
    <td align="center"><a href="viewClass.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/view.gif" class="img"/></a></td>
     <td align="center"><a href="${pageContext.request.contextPath}/classinfo/uploadUI.do?id=${info.classid}&name=${info.courseType.coursename }&typeid=${info.courseType.coursetypeid }"">上传</a></td>
  </tr>
  <tr class="tabtd1">
    <td align="center">JAVA0805</td>
    <td align="center">Java就业班</td>
    <td align="center">2012-08-05</td>
    <td align="center">2012-12-05</td>
    <td align="center">已结课</td>
    <td align="center">85</td>
    <td align="center">78</td>
    <td align="center">7</td>
    <td align="center"><a href="addOrEditClass.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/modify.gif" class="img"/></a></td>
    <td align="center"><a href="viewClass.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/view.gif" class="img"/></a></td>
    <td align="center"><a href="viewClass.html"><img src="${pageContext.request.contextPath}/crm_html/images/button/view.gif" class="img"/></a></td>
  </tr>
  </tbody>
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
