<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查询员工信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {font-size: 12px}
.STYLE3 {font-size: 12px; font-weight: bold; }
.STYLE4 {
	color: #03515d;
	font-size: 12px;
}

	a{
	text-decoration: none;
	color: #033d61;
	font-size: 12px;
}

A:hover {
	COLOR: #f60; TEXT-DECORATION: underline
}

-->
</style>

<script>
var  highlightcolor='#c1ebff';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}
</script>
<script type="text/javascript">

    function del(user_id){
    	var flag = window.confirm("您确定要删除第"+user_id+"个员工吗？");
    	if(flag){
    		location.href="UserDelServlet?user_id=" + user_id;
    	}
    }
    
    function upd(user_id){
    	location.href="UserQueryByIdServlet?qid=1&user_id=" + user_id;
    }
    function more(user_id){
    	location.href="UserQueryByIdServlet?qid=2&user_id=" + user_id;
    }

    function query(){
    	document.form1.action="UserQueryServlet?idcheck=2";
    }
</script>

</head>
<body>

<form  name="form1" method="post" onsubmit="return query()">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
    <td height="30" background="<%=basePath%>resource/images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="<%=basePath%>resource/images/tab_03.gif" width="12" height="30" /></td>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td class="STYLE4" align="center">&nbsp;&nbsp;请输入查询内容：
            <input type="text" name="userInput" style="width: 290px"/></td>
            <td class="STYLE4">&nbsp;&nbsp;请选择查询方式：
            <select name="queryType" style="width: 100px">
      					<option  value="1">员工姓名</option>
     				 	<option  value="2">部门名称</option>
     				 	<option  value="3"> 角色名称</option>
     				 	<option  value="4"> 员工学历</option>
   				 </select>            
   				</td>
            <td class="STYLE4">&nbsp;&nbsp;
            <input  type="submit" value="查询" style="width:50px"/>
            </td>           
          </tr>
        </table></td>
        <td width="16"><img src="<%=basePath%>resource/images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>


  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="<%=basePath%>resource/images/tab_12.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()">
          <tr>
            <td height="22" background="<%=basePath%>resource/images/bg2.gif" bgcolor="#FFFFFF" style="width: 3%"><div align="center"><span class="STYLE1">序号</span></div></td>
            <td height="22" background="<%=basePath%>resource/images/bg2.gif" bgcolor="#FFFFFF" style="width: 5%"><div align="center"><span class="STYLE1">姓名</span></div></td>
            <td height="22" background="<%=basePath%>resource/images/bg2.gif" bgcolor="#FFFFFF" style="width: 3%"><div align="center"><span class="STYLE1">性别</span></div></td>
            <td height="22" background="<%=basePath%>resource/images/bg2.gif" bgcolor="#FFFFFF" style="width:3%"><div align="center"><span class="STYLE1">年龄</span></div></td>
	    	<td height="22" background="<%=basePath%>resource/images/bg2.gif" bgcolor="#FFFFFF" style="width:3%"><div align="center"><span class="STYLE1">民族</span></div></td>
            <td height="22" background="<%=basePath%>resource/images/bg2.gif" bgcolor="#FFFFFF" style="width: 5%"><div align="center"><span class="STYLE1">部门</span></div></td> 
	    	<td height="22" background="<%=basePath%>resource/images/bg2.gif" bgcolor="#FFFFFF" style="width: 5%"><div align="center"><span class="STYLE1">角色</span></div></td>
	    	<td height="22" background="<%=basePath%>resource/images/bg2.gif" bgcolor="#FFFFFF" style="width: 5%"><div align="center"><span class="STYLE1">学历</span></div></td>
            <td height="22" background="<%=basePath%>resource/images/bg2.gif" bgcolor="#FFFFFF" style="width: 5%"><div align="center"><span class="STYLE1">婚姻</span></div></td>
            <td height="22" background="<%=basePath%>resource/images/bg2.gif" bgcolor="#FFFFFF" style="width: 15%"><div align="center"><span class="STYLE1">家庭地址</span></div></td>
            <td height="22" background="<%=basePath%>resource/images/bg2.gif" bgcolor="#FFFFFF" style="width: 10%"><div align="center"><span class="STYLE1">手机</span></div></td>
            <td height="22" background="<%=basePath%>resource/images/bg2.gif" bgcolor="#FFFFFF" style="width: 9%"><div align="center"><span class="STYLE1">电话</span></div></td>
            <td height="22" background="<%=basePath%>resource/images/bg2.gif" bgcolor="#FFFFFF" style="width: 15%"><div align="center"><span class="STYLE1">邮箱</span></div></td>      
            <td height="22" background="<%=basePath%>resource/images/bg2.gif" bgcolor="#FFFFFF" class="STYLE1" style="width: 14%"><div align="center">基本操作</div></td>
          </tr>
          
         <!-- 输出用户信息 -->
         <c:forEach items="${requestScope.allData }" var="oneUser">
          <tr>
            <td height="20" bgcolor="#FFFFFF" style="width: 3%"><div align="center" class="STYLE1"><div align="center">${oneUser.user_id } </div></div></td>
            <td height="20" bgcolor="#FFFFFF" style="width: 5%"><div align="center"><span class="STYLE1"> ${oneUser.user_name}</span></div></td>
            <td height="20" bgcolor="#FFFFFF" style="width: 3%"><div align="center"><span class="STYLE1">${oneUser.user_sex}</span></div></td>
            <td height="20" bgcolor="#FFFFFF" style="width: 3%"><div align="center"><span class="STYLE1">${oneUser.user_age}</span></div></td>
	    	<td height="20" bgcolor="#FFFFFF" style="width: 3%"><div align="center"><span class="STYLE1">${oneUser.user_nation}</span></div></td>
	  	  	<td height="20" bgcolor="#FFFFFF" style="width: 5%"><div align="center"><span class="STYLE1"> ${oneUser.department_name } </span></div></td>
	    	<td height="20" bgcolor="#FFFFFF" style="width: 5%"><div align="center"><span class="STYLE1"> ${oneUser.role_name } </span></div></td>
            <td height="20" bgcolor="#FFFFFF" style="width: 5%"><div align="center"><span class="STYLE1">${oneUser.user_diploma} </span></div></td>
            <td height="20" bgcolor="#FFFFFF" style="width: 5%"><div align="center"><span class="STYLE1"> ${oneUser.is_married } </span></div></td>
	    	<td height="20" bgcolor="#FFFFFF" style="width: 15%"><div align="center"><span class="STYLE1">${oneUser.user_address } </span></div></td>
   	    	<td height="20" bgcolor="#FFFFFF" style="width: 10%"><div align="center"><span class="STYLE1"> ${oneUser.user_mobile }</span></div></td>
            <td height="20" bgcolor="#FFFFFF" style="width: 9%"><div align="center"><span class="STYLE1">${oneUser.user_tel }</span></div></td>
            <td height="20" bgcolor="#FFFFFF" style="width:1 5%"><div align="center"><span class="STYLE1">${oneUser.user_email }</span></div></td>
            <td height="20" bgcolor="#FFFFFF" style="width: 14%"><div align="center"><span class="STYLE4">
            <img  src="<%=basePath%>resource/images/edt.gif" width="16" height="16" />
            <a href="javaScript:upd(${oneUser.user_id })">编辑</a>&nbsp;<img src="<%=basePath%>resource/images/edt.gif" width="16" height="16" />
            <a href="javaScript:more(${oneUser.user_id })">详情</a>&nbsp;<img  src="<%=basePath%>resource/images/del.gif" width="16" height="16" />
            <a href="javascript:del(${oneUser.user_id })">删除</a></span></div></td>
          </tr>
         </c:forEach>
          
           <!-- 输出用户信息结束 -->
           <!-- 没有用户信息，输出以下内容 -->
			<tr>
			<c:if test="${requestScope.nowPage==requestScope.pageCount }">
				<td height="20" bgcolor="#FFFFFF" colspan="21"  align="center">
					<div align="center">
						<span class="STYLE1">没有员工相关信息</span>
					</div>
				</td>
			</c:if>
			</tr>
		
          </table></td>
        <td width="8" background="<%=basePath%>resource/images/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="35" background="<%=basePath%>resource/images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="<%=basePath%>resource/images/tab_18.gif" width="12" height="35" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td class="STYLE4">&nbsp;&nbsp;共有 ${rowCount}条记录，当前第 ${nowPage }/${pageCount } 页</td>
            <td><table border="0" align="right" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="40">
                  <a href="UserQueryServlet?pagenum=1">
                  <img src="<%=basePath%>resource/images/first.gif" width="37" height="15" />
                  </a>
                  </td>
                  <td width="45">
                  <a href="UserQueryServlet?pagenum=${requestScope.nowPage-1 }">
                  <img src="<%=basePath%>resource/images/back.gif" width="43" height="15" />
                  </a>
                  </td>
                  <td width="45">
                  <c:choose>
                  <c:when test="${requestScope.mark==2 }">
                     <a href="UserQueryServlet?idcheck=2&queryType=${queryType}&userInput=${userInput}&pagenum=${requestScope.nowPage+1 }">
                     <img src="<%=basePath%>resource/images/next.gif" width="37" height="15" />
                     </a>
                  </c:when>
                  <c:otherwise>
                     <a href="UserQueryServlet?pagenum=${requestScope.nowPage+1 }">
                      <img src="<%=basePath%>resource/images/next.gif" width="43" height="15" />
                     </a>
                  </c:otherwise>
                  </c:choose>
                  
                  </td>
                  <td width="40">
                  <c:choose>
                  <c:when test="${mark==2 }">
                     <a href="UserQueryServlet?idcheck=2&pagenum=${requestScope.pageCount }">
                     <img src="<%=basePath%>resource/images/last.gif" width="37" height="15" />
                     </a>
                  </c:when>
                  <c:otherwise>
                     <a href="UserQueryServlet?pagenum=${requestScope.pageCount }">
                     <img src="<%=basePath%>resource/images/last.gif" width="37" height="15" />
                     </a>
                  </c:otherwise>
                  </c:choose>
                  
                  </td>
                  <td width="100"><div align="center">
                  <span class="STYLE1">转到第
                    <input name="textfield" type="text" size="4" style="height:12px; width:20px; border:1px solid #999999;" /> 
                    页 </span></div></td>
                  <td width="40">
                  <img src="<%=basePath%>resource/images/go.gif" width="37" height="15" />
                  </td>
                </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="<%=basePath%>resource/images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>
