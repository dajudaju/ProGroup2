<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length != 0){
		for (int i = 0; i < cookies.length; i++) {
			if(cookies[i].getName().equals("manager-pwd")){
				String m_name = cookies[i].getValue().split("-")[0];
				String m_password = cookies[i].getValue().split("-")[1];
				request.setAttribute("m_name", m_name);
				request.setAttribute("m_password", m_password);
				break;
			}
		}
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>管理员登录</title>
<style type="text/css">
body {
	/* margin: 150px auto; */
	text-align: center;
	background-image:
		url(${pageContext.request.contextPath }/Manager/images/bg1.jpg);
	background-size: cover;
}

.logindiv {
	width: 300px;
	height: 240px;
	margin: 140px auto;
	padding-top: 40px;
	/* border: 1px aqua solid; */
	background-color: white;
	opacity: 0.9;
}

.logindiv input {
	width: 200px;
	height: 30px;
}

.logindiv input[type="submit"] {
	background-color: #ADD8E6;
	height: 40px;
	width: 210px;
	border: 0px;
	border-radius: 10px;
	margin-bottom: 10px;
	cursor: pointer;
	/* opacity: 0.6; */
}

.logindiv a {
	color: #4682B4;
}

.logindiv input[type="checkbox"] {
	width: 15px;
	height: 15px;
	vertical-align: middle;
}
</style>
<script type="text/javascript">
	var a, b = false;
	window.onload = function() {
		var name = getCookie("name");
		var password = getCookie("password");
		var check = getCookie("check");
		if (name != null && password != null) {
			document.getElementById("name").value = name;
			document.getElementById("password").value = password;
			document.getElementById("check").checked = "checked";
			a, b = true;
		}
	};
	function clickname() {
		var namespan = document.getElementById("nameinfo");
		namespan.innerHTML = "<font color='orange' size='2'>请输入2-6位字母或数字</font>";
	}
	function namecheck() {
		var name = document.getElementById("name").value;
		var namespan = document.getElementById("nameinfo");
		// alert(name);
		var str = /^[0-9a-zA-Z]{2,6}$/;
		if (str.test(name)) {
			// alert("test");
			namespan.innerHTML = "<font color='green' size='2'>√</font>";
			a = true;
		} else {
			// alert("test1");
			namespan.innerHTML = "<font color='red' size='2'>×请输入2-6位字母或数字</font>";
			a = false;
		}
	}
	function clickpwd() {
		var namespan = document.getElementById("passwordinfo");
		namespan.innerHTML = "<font color='orange' size='2'>请输入6-12位数字或字母</font>";
	}
	function pwdcheck() {
		var password = document.getElementById("password").value;
		var passwordspan = document.getElementById("passwordinfo");
		// alert(name);
		var str = /^[0-9a-zA-Z]{6,12}$/;
		if (str.test(password)) {
			// alert("test");
			passwordspan.innerHTML = "<font color='green' size='2'>√</font>";
			b = true;
		} else {
			// alert("test1");
			passwordspan.innerHTML = "<font color='red' size='2'>×请输入6-12位数字或字母</font>";
			b = false;
		}
	}
	var cookies = document.cookie.split(";");
	/* alert(cookies); */
	function getCookie(key) {
		for (var i = 0; i < cookies.length; i++) {
			var v = cookies[i].split("=");
			if (v[0].trim() == key) {
				return v[1].trim();
			}
		}
	}

	function skip() {
		if (a && b) {
			return true;
		} else {
			alert("请按照提示完成信息填写~");
			return false;
		}
	}
</script>
</head>
<body>
	<div class="logindiv">
		<form
			action="${pageContext.request.contextPath }/managerServlet?cmd=login"
			method="post" name="loginform" onsubmit="return skip()">
			<input type="text" name="m_name" id="name" value="${m_name }" placeholder="账号"
				maxlength="14" onclick="clickname()" onblur="namecheck()" /><br /> <span
				id="nameinfo"></span><br /> <input type="password" name="m_password"
				id="password" value="${m_password }" placeholder="密码" onclick="clickpwd()"
				onblur="pwdcheck()" /><br /> <span id="passwordinfo"></span><br /> 
				<c:if test="${m_name == null}">
					<input type="checkbox" id="check" style="cursor: pointer;" name="remember"
					value="1" />记住密码<br />
				</c:if>
				<c:if test="${m_name != null }">
					<input type="checkbox" id="check" style="cursor: pointer;" name="remember"
					value="1" checked="checked" />记住密码<br />
				</c:if>
			<br /> <input type="submit" value="登        录" name="cmd" />
		</form>
		<%-- <a href="${pageContext.request.contextPath}/SelectCourse/register.jsp">尚未拥有账号？点此进行注册</a> --%>
	</div>
</body>
</html>
