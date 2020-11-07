<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.5.1.js"></script>
<script type="text/javascript">
	function register() {
		var $mobile = $("#mobile").val();
		
		$.post(
			"MobileServlet",
			"mobile="+$mobile,
			function(result){
				if(result == "false"){
					alert("注册失败！");
				} else {
					alert("注册成功！");
				}
			},
			"text"
			 
		);
		/*
		$.get(
			"MobileServlet",
			"mobile="+$mobile,
			function(result){
				if(result == "false"){
					alert("注册失败！");
				} else {
					alert("注册成功！");
				}
			}
		);
		
		
		$.ajax({
			url:"MobileServlet",
			type:"post",
			data:"mobile="+$mobile,
			success:function(result,testStatus){
				if(result == "false"){
					alert("注册失败，该号码已存在！");
				} else {
					alert("注册成功！");
				}
			},
			error:function(xhr,errorMessage,e){
				alert("系统错误！");
			}
		});
		
		
		/*
		var $mobile = $("#mobile").val();
		$.ajax({
			url:"MobileServlet",
			请求方式:"post",
			data:"mobile="+$mobile, 
			success:function(result,testStatus)
			{
				if(result == "true"){
					alert("已存在！注册失败！");
				}else{
					alert("注册成功！");
				}
			},
			error:function(xhr,errrorMessage,e){
				alert("系统异常！");
			}


			});
			
		 
		var Mobile = document.getElementById("mobile").value;
		
		//创建对象
		xmlhttprequest = new XMLHttpRequest();
		
		//建立、打开连接
		xmlhttprequest.open("post","MobileServlet",true);
		
		//回调函数
		xmlhttprequest.onreadystatechange = callback;
		
		//设置请求消息头
		xmlhttprequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
		
		//发送 k=v
		xmlhttprequest.send("mobile="+Mobile);
		*/
	}
	
	function callback() {
		
		if(xmlhttprequest.readyState == 4 && xmlhttprequest.status == 200){
			var data = xmlhttprequest.responseText;
			alert("data == "+data.length);
			if(data == "false"){
				alert("此号码已存在！");
			} else {
				alert("注册成功！");
			}
		}
	}
	
		
</script>


</head>
<body>
	
	电话：<input type="text" id="mobile"/><br>
	<input type="button" value="注册" onclick="register()"/>
	
</body>
</html>