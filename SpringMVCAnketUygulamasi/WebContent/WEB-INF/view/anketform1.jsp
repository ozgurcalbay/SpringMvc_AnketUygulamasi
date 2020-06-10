<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<title>Anket Sayfa 1</title>
		<style>
		body {
			  max-width: 500px;
			  margin: auto;
			  background: white;
			  padding: 20px;
			}
		
			 .button {
			  background-color: #4CAF50; 
			  border: none;
			  color: white;
			  padding: 12px 24px;
			  text-align: center;
			  text-decoration: none;
			  display: inline-block;
			  font-size: 14px;
			  margin: 4px 2px;
			  transition-duration: 0.4s;
			  cursor: pointer;
			}
			
			
			
			.button2 {
			  background-color: white; 
			  color: black; 
			  border: 2px solid #008CBA;
			}
			
			.button2:hover {
			  background-color: #008CBA;
			  color: white;
			}
			
		</style>
</head>
<body>


	<f:form action="showform2" method="GET" modelAttribute="anket">
	Ad :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<f:input  path="ad"/><br/><br/>
	Soyad :<f:input  path="soyad"/><br/><br/>
	Cinsiyet :<f:radiobutton path="cinsiyet" value="Kadin"/>Kadin &nbsp;&nbsp;
	<f:radiobutton  path="cinsiyet" value="Erkek"/>Erkek<br/><br/>
	
	Sehir :&nbsp;&nbsp;<f:select  path="sehir">
	
	<f:options items="${anket.sehirlerlistesi}"/>	
	</f:select><br/><br/>
	
	Yaşınız :
	<f:radiobutton  path="yas" value="18-24"/>18-24
	<f:radiobutton  path="yas" value="25-34"/>25-34
	<f:radiobutton  path="yas" value="35-54"/>35-54
	<f:radiobutton  path="yas" value="55 ve üzeri"/>55 ve üzeri


	<br/><br/><input class="button button2"  value="Sonraki Sayfa" type="Submit"/>
	</f:form>


</body>
</html>