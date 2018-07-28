<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<HTML><HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<TITLE></TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/crm_html/js/jquery-1.8.3.js"></script>
<LINK href="${pageContext.request.contextPath }/crm_html/css/style.css" type=text/css rel=stylesheet>
<base target="_self">
<script>
	function modifypsw(){
		//只支持IE
   		var dw=window.showModalDialog('/crm/html/staff/updPwd.html','', 'dialogHeight:180px; dialogWidth:260px; dialogLeft:500px; dialogTop:220px;edge:sunken;center:yes;location:no;help:no;resizable:no;status:no;scroll:no');
	} 
</script>


</HEAD>
<BODY bgColor=#CEEBFF leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">

<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table1" height="27">
	<tr>
		<td>
		<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table2">
			<tr>
				<td width="420" background="${pageContext.request.contextPath }/crm_html/images/topbg.jpg" width="436" height="80">
				<%-- <img border="0" src="${pageContext.request.contextPath }/crm_html/images/topbg.jpg" width="436" height="80">--%></td> 
				<td background="${pageContext.request.contextPath }/crm_html/images/topbg.jpg" >
				<div align="right">
				<table border="0" width="145" id="table7" cellspacing="0" cellpadding="0">
					<tr>
						<td width="150" height="35"><p align="right"></td>
					</tr>
				</table>
				</div>
				</td>
				<td width="374" background="${pageContext.request.contextPath }/crm_html/images/topright.jpg" valign="top">
				<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table4">
					<tr>
						<td>
						<div align="right">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table5">
								<tr>
									<td height="19">
									<p align="center">
									<img border="0" src="${pageContext.request.contextPath }/crm_html/images/calendar.gif" align="left"><font color="#ffffff" id="systime"></font></td>
									<td width="100" > <font color="#FFFFFF">欢迎您：${user.loginname }<b></b></font>
									<script type="text/javascript">
									
											var timer=null;
											function tt(n){
												if(n<10){
												 return '0'+n
												}else{
												 return n+''
												}             
											}
											timer=setInterval(function(){
												var oDate=new Date();
												var oY=oDate.getFullYear();
												var oM=oDate.getMonth();
												var oD=oDate.getDate();
												var oK=oDate.getDay();
												var oH=oDate.getHours();
												var oMinutes=oDate.getMinutes();
												var oS=oDate.getSeconds(); 
												$("#systime").text(document.getElementById("systime").innerHTML='今天是：' + tt(oY)+'年'+tt(oM+1)+'月'+tt(oD)+'日'+
													' ' + '星期' + "日一二三四五六".charAt(oK) + ' ' + tt(oH)+':'+tt(oMinutes)+':'+tt(oS))
											},1000);
									
									</script>
									
									
								</tr>
							</table>
						</div>
					    </td>
					</tr>
					<tr>
						<td>
						<div align="right">
							<table border="0" width="215" cellspacing="0" cellpadding="0" id="table6" height="23">
								<tr>
									<td width="26"><img border="0" src="${pageContext.request.contextPath }/crm_html/images/pwd.gif"></td>
									<td width="51" valign="middle">
										<!-- JavaScript只支持IE , 效果更好应该使用弹出框
										<a href="javascript:modifypsw();" ><font color="ffffff">更改口令</font></a>
										 -->
										<a href="${pageContext.request.contextPath }/crm_html/html/staff/updPwd.jsp" target="right"><font color="ffffff">更改口令</font></a>
									</td>
									<td width="31"><p align="center"><img border="0" src="${pageContext.request.contextPath }/crm_html/images/login.gif"></td>
									<td width="55" valign="middle"><a href="${pageContext.request.contextPath }/crm_html/html/login.jsp" target="_top"><font color="ffffff">重新登录</font></a></td>
								</tr>
							</table>
						</div>
						</td>
					</tr>
				</table>			  </td>
			</tr>
		</table>
		</td>
	</tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0" height="10" id="table3">
	<tr>
		<td style="border-bottom: 1px solid #ffffff; filter: progid:dximagetransform.microsoft.gradient(startcolorstr='#0075C4', endcolorstr='#ffffff', gradienttype='1'">　</td>
	</tr>
</table>

</BODY></HTML>