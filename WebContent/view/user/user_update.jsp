<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>修改员工信息</title>

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
			<script language="JavaScript" type="text/javascript" src="<%=basePath%>resource/js/FormValid.js"></script>

	</head>

	<body>
		<form method="post" name="form2" onsubmit="return validator(this)" >
			<table class=editTable cellSpacing=1 cellPadding=0 width="100%" align=center border=0>
			<c:forEach items="${requestScope.allData }" var="one">
				<tr class=editHeaderTr>
					<td class=editHeaderTd colSpan=7>
						请修改用户的详细信息
						<input type="hidden" name="userId" value="1234"
							readonly="readonly">
					</td>
				</tr> 
				<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							姓名：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						<input type="text" style="width: 145px" name="userName" disabled="disabled" value="${one.user_name }"
							readonly="readonly">
						&nbsp;
					</td>
					<td bgcolor="#FFFDF0">
						<div align="center">
							年龄：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						<input type="text"  style="width: 145px" name="userAge" maxlength="2"  valid="required|isNumber"  errmsg="员工年龄不能为空!|请输入正确的年龄!" value="${one.user_age }">
						&nbsp;
					</td>
				</tr>

				<tr>
					<td bgcolor="#FFFDF0" style="height: 21px">
						<div align="center">
							性别：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF" style="height: 21px">
						<input type="radio" name="userSex"
							checked="checked"
							value="男" />
						男
						<input type="radio" name="userSex"
							value="女" />
						女
						<br />
					</td>
					<td bgcolor="#FFFDF0">
						<div align="center">
							民族：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						<input type="text"  style="width: 145px" name="userNation"
							value="${one.user_nation }">
						&nbsp;
					</td>
				</tr>

				<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							学历：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						<select name="userDiploma" style="width: 145px" >
						<c:set var="diploma" value="${requestScope.user_diploma }"></c:set>
						
							<option value=""
								<c:if test="${diploma=='初中' }"> selected="selected" </c:if> >
								初中
							</option>
						
							<option <c:if test="${diploma=='高中' }">selected="selected" </c:if> >
								高中
							</option>
							<option <c:if test="${diploma=='本科' }">selected="selected" </c:if> >
								本科
							</option>
							<option <c:if test="${diploma=='博士' }">selected="selected" </c:if> >
								博士
							</option>
							<option <c:if test="${diploma=='硕士' }">selected="selected" </c:if> >
								硕士
							</option>
						</select>
						&nbsp;
					</td>
					<td bgcolor="#FFFDF0">
						<div align="center">
							婚姻：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						<select name="isMarried" style="width: 145px">
							<option 
								selected="selected" >
								已婚
							</option>
							<option >
								未婚
							</option>
							<option >
								离异
							</option>
						</select>
						&nbsp;
					</td>
				</tr>


				<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							部门：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						<select name="departmentId" style="width: 145px">
							
							<option value="1" selected="selected">销售部</option>
							<option value="2" >财务部</option>
							<option value="3" >行政部</option>
							<option value="4" >人事部</option>
							
						</select>
						&nbsp;
					</td>
					<td bgcolor="#FFFDF0">
						<div align="center">
							角色：
						</div>
					</td>

					<td colspan="3" bgcolor="#FFFFFF">
						<select name="roleId"  disabled="disabled" style="width: 145px">
                   
						<!--循环输出角色  -->
							<option value="1" selected="selected" >管理员</option>
							<option value="2" >员工</option>
							<option value="3" >老板</option>
						</select>
					</td>

	
				<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							座机：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						<input type="text"  style="width: 145px"     valid="isPhone"   errmsg="请输入正确的座机号码!" name="userTel" value="${one.user_tel }">
						&nbsp;
					</td>
					<td bgcolor="#FFFDF0">
						<div align="center">
							爱好：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						<input type="text"  style="width: 145px"  maxlength="50"  name="userIntest"
							value="${one.user_intest }">
						&nbsp;
					</td>
				</tr>
			
				<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							工资卡号：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						<input type="text" style="width: 145px"  valid="isNumber"   errmsg="请输入正确的工资卡号!"  maxlength="20"   name="userBankcard"
							value="${one.user_bankcard }">
						&nbsp;
					</td>
					<td bgcolor="#FFFDF0">
						<div align="center">
							手机：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						<input type="text"  style="width: 145px" valid="regexp"  regexp="^1[3|4|5|8][0-9]\d{8}$"   errmsg="请输入正确的手机号码!" name="userMobile"
							value="${one.user_mobile }">
						&nbsp;
					</td>

				</tr>

				<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							身份证：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						<input type="text"  style="width: 145px"  valid="isIdCard"   errmsg="请输入正确的身份证号码!" name="userIdnum" value="${one.user_idnum }">
						&nbsp;
					</td>
					<td bgcolor="#FFFDF0">
						<div align="center">
							添加时间：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						<input type="text"  style="width: 145px" name="userAddtime"
							disabled="disabled" value="${one.user_addtime }">
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							添加人：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						<input type="text"  style="width: 145px"  maxlength="10" name="userAddman"
							disabled="disabled" value="${one.user_addman }">
						&nbsp;
					</td>
					<td bgcolor="#FFFDF0">
						<div align="center">
							修改人：
						</div>
						<input type="hidden"   value="<%=new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())%>" name="userChangeTime">
					
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						<input type="text" name="userChangeman"
							style="width: 145px"    maxlength="20" value="${one.user_changeman }">
						&nbsp;
					</td>
				</tr>

				<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							E_mail：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						<input type="text" style="width: 145px"  maxlength="50" name="userEmail" value="${one.user_email }">
						&nbsp;
					</td>
					<td bgcolor="#FFFDF0">
						<div align="center">
							地址：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						<input type="text" style="width: 145px"  maxlength="50"  name="userAddress"
							value="${one.user_address }">
						&nbsp;
					</td>
				</tr>
               </c:forEach>
			</table>
			<table class=editTable cellSpacing=1 cellPadding=0 width="100%"
				align=center border=0>
				<tr bgcolor="#ECF3FD">
					<td width="36%"></td>
					<td width="17%"><input type="submit" name="submit"  value="提交"></td>
					<td width="4%"><input type="button" name="button"  onClick="history.back() "  value="返回"></td>
					<td width="43%"></td>
				</tr>
			</table>

		</form>

	</body>
</html>
