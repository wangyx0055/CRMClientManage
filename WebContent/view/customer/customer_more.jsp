<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>修改客户信息</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<LINK href="<%=basePath%>resource/css/admin.css" type=text/css
			rel=stylesheet>
		<script type="text/javascript"
			src="<%=basePath%>resource/js/CheckForm.js"></script>
		<script type="text/javascript"
			src="<%=basePath%>resource/js/My97DatePicker/WdatePicker.js"></script>
	
	</head>

	<body>
		<form action=" servlet/CustomerUpdateServlet "
			method="get" name="form2" onSubmit="return checkForm('form2');">
		

			<table class=editTable cellSpacing=1 cellPadding=0 width="100%"
				align=center border=0>
				<tr class=editHeaderTr>
					<td class=editHeaderTd colSpan=7>客户详细信息<input type="hidden" name="customerId"value="CustomerId" /></td>
				</tr>
				<tr>
					<td width="12%" bgcolor="#FFFDF0"><div align="center">负责员工：</div></td>
					<td colspan="3" bgcolor="#FFFFFF"  align="center">CustomerForUser() %></td>
				  <td width="14%" bgcolor="#FFFDF0"  ><div align="center">客户来源：</div></td>
					<td width="41%" colspan="3"   align="center" bgcolor="#FFFFFF">CustomerSource</td>
				</tr>
				<tr>
					<td bgcolor="#FFFDF0"><div align="center">客户姓名：</div></td>
					<td colspan="3" bgcolor="#FFFFFF"  align="center">CustomerName</td>
					<td bgcolor="#FFFDF0"><div align="center">客户状态：</div></td>
					<td colspan="3" bgcolor="#FFFFFF"  align="center">CustomerCondition</td>
				</tr>
				<tr>
					<td bgcolor="#FFFDF0"><div align="center">客户性别：</div></td>
					<td colspan="3" bgcolor="#FFFFFF"  align="center">CustomerSex</td>
					<td bgcolor="#FFFDF0"><div align="center">客户类型：</div></td>
					<td colspan="3" bgcolor="#FFFFFF"  align="center">CustomerType</td>
				</tr>

				<tr>
					<td bgcolor="#FFFDF0"><div align="center">出生日期：</div></td>
					<td colspan="3" bgcolor="#FFFFFF"   align="center">CustomerBirthday</td>
					<td bgcolor="#FFFDF0"><div align="center">客户手机：</div></td>
					<td colspan="3" bgcolor="#FFFFFF"  align="center">CustomerMobile</td>
				</tr>
				
				<tr>
					<td bgcolor="#FFFDF0"><div align="center">客户QQ：</div></td>
					<td colspan="3" bgcolor="#FFFFFF"  align="center">CustomerQq</td>
					<td bgcolor="#FFFDF0"><div align="center">客户地址：</div></td>
					<td colspan="3" bgcolor="#FFFFFF"  align="center">CustomerAddress</td>
				</tr>

				<tr>
					<td bgcolor="#FFFDF0"><div align="center">客户邮箱：</div></td>
					<td colspan="3" bgcolor="#FFFFFF"   align="center">CustomerEmail</td>
					<td bgcolor="#FFFDF0"><div align="center">客户职位：</div></td>
					<td colspan="3" bgcolor="#FFFFFF"  align="center">CustomerJob</td>
				</tr>

				<tr>
					<td bgcolor="#FFFDF0"><div align="center">客户微博：</div></td>
					<td colspan="3" bgcolor="#FFFFFF"   align="center">CustomerBlog</td>
					<td bgcolor="#FFFDF0"><div align="center">客户座机：</div></td>
					<td colspan="3" bgcolor="#FFFFFF"  align="center">CustomerTel</td>
				</tr>

				<tr>
					<td bgcolor="#FFFDF0"><div align="center">客户MSN：</div></td>
					<td colspan="3" bgcolor="#FFFFFF"   align="center">CustomerMsn</td>
					<td bgcolor="#FFFDF0"><div align="center">客户公司：</div></td>
					<td colspan="3" bgcolor="#FFFFFF"  align="center">CustomerCompany</td>
				</tr>
				<tr>
					<td bgcolor="#FFFDF0"><div align="center">创建人：</div></td>
					<td colspan="3" bgcolor="#FFFFFF"   align="center">CustomerAddMan</td>
					<td bgcolor="#FFFDF0"><div align="center">修改人：</div></td>
					<td colspan="3" bgcolor="#FFFFFF"   align="center">CustomerChangeMan</td>
				</tr>
				<tr>
					<td bgcolor="#FFFDF0"><div align="center">创建时间：</div></td>
					<td colspan="3" bgcolor="#FFFFFF"   align="center">CustomerAddTime</td>
					<td bgcolor="#FFFDF0"><div align="center">修改时间：</div></td>
					<td colspan="3" bgcolor="#FFFFFF"   align="center">CustomerChangeTime</td>
				</tr>
				<tr>
					<td bgcolor="#FFFDF0"><div align="center">备注：</div></td>
					<td colspan="6" bgcolor="#FFFFFF"   align="center">CustomerRemark</td>
				</tr>
			</table>
			<table class=editTable cellSpacing=1 cellPadding=0 width="100%"
				align=center border=0>
				<tr bgcolor="#ECF3FD">
					<td width="36%"></td>
					<td width="17%"><input type="submit" name="submit"  value="编辑"></td>
					<td width="4%"><input type="button" name="button"  onClick="history.back() "  value="返回"></td>
					<td width="43%"></td>
				</tr>
			</table>
		</form>
	</body>
</html>
