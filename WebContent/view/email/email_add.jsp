<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>发送邮件</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<LINK href="<%=basePath%>resource/css/admin.css" type=text/css rel=stylesheet>
<script type="text/javascript"
			src="<%=basePath%>resource/js/CheckForm.js"></script>
		<script type="text/javascript"
			src="<%=basePath%>resource/js/My97DatePicker/WdatePicker.js"></script>
	<script language=JavaScript>
		
			function subForm(){
				
						//获取表单对象
						
						var form2 = document.getElementById("form2");
						if(form2.emailTheme.value !="" &&  form2.emailContent.value !="" ){
						form2.action = "<%=basePath%>servlet/EmailAddNoSendServlet";
						form2.submit();
						}else{
										
							form2.action = "<%=basePath%>view/email/email_add.jsp";
						}
		
		}
				
</SCRIPT>
  </head>
  
  <body  onload=startclock()>
<form action="<%=basePath%>servlet/EmailAddServlet"   id="form2"   method="post" name="form2" onsubmit="return checkForm('form2');" >
<table class=editTable cellSpacing=1 cellPadding=0 width="100%" align=center border=0>
<tr class=editHeaderTr>
<td class=editHeaderTd colSpan=7>  请输入邮件的详细信息
</td>
</tr>  
	 
	 
	 <tr>
		<td bgcolor="#FFFDF0"><div align="center">收件人：</div></td>
		<td colspan="3" bgcolor="#FFFFFF">
		<select name="addressee" style=" width: 580px">
		<!-- 循环输出客户下拉列表 -->
			<option value="1" selected="selected">孙悟空</option>
			<option value="2">华纳</option>
			<option value="3">刘欢</option>
		
		</select>&nbsp;</td>
    </tr>
<tr>
      <td bgcolor="#FFFDF0"><div align="center">主题：</div></td>
    <td colspan="3" bgcolor="#FFFFFF"><input type="text" style="width:580px" check_str="主题" name="emailTheme">
     </td>
    </tr>
	 

  	<tr>
  		  	<td bgcolor="#FFFDF0"><div align="center">内容：</div></td>
    		<td colspan="3" bgcolor="#FFFFFF"><textarea  check_str="内容"  rows="20" name="emailContent" style="width:578px; resize:none; height:300px;"></textarea></td>
    </tr>
    <tr>
		<td bgcolor="#FFFDF0"><div align="center">发件人：</div></td>
		<td colspan="3" bgcolor="#FFFFFF"><select name="addresser" style=" width: 580px">
		<!-- 员工信息 -->
			<option  value="1" selected="selected">张三</option>
			<option  value="2" >张三</option>
			<option  value="3" >张三</option>
			
		</select>&nbsp;</td>
		<td>
			<input type="hidden"    value="<%=new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())%>"  name="emailTime" >
		</td>
    </tr>
</table>
<table class=editTable cellSpacing=1 cellPadding=0 width="100%" align=center border=0>
  <tr bgcolor="#ECF3FD">
    <td width="12%">&nbsp;</td>
    <td width="12%"><input type="submit" name="Submit" value="发送"  ></td><td width="12%">
    <input type="submit"  value="存草稿" onclick="subForm()" ></td>
    <td width="40%"><input type="reset" name="reset" value="重写"></td>
  </tr>
</table>

</form>
</body>
</html>
