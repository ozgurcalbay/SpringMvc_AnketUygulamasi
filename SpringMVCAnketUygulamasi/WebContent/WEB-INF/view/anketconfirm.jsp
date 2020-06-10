<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Anket Cevapları</title>
<style>
		body {
			  max-width: 500px;
			  margin: auto;
			  background: white;
			  padding: 20px;
			}
</style>
</head>
<body>

	
	
	Ad :${anket22.get(0)}<br/>

	<br/>Soyad :${anket22.get(1)}<br/>
	
	<br/>Cinsiyet :${anket22.get(2)}<br/>
	
	<br/>Sehir :${anket22.get(3)}<br/>
	
	<br/>Yas :${anket22.get(4)}<br/>
	<br/>Ogrenim Durumu:${anket2.ogrenim_durumu}<br/>
	
	<br/>Calıstıgı Sektor :${anket2.sektor}<br/>
	<br/>Gelir Aralıgı :${anket2.gelir}<br/>
	<br/>En Çok Harcama Yapılanlar :<br/>
	<c:forEach items="${anket2.harcama}" var="rec">
		${rec},
	</c:forEach>
	
	<br/><br/>Bos Zaman Degerlendirme :<br/>
	<c:forEach items="${anket2.bos_zaman}" var="rec">
		${rec},
	</c:forEach>
		
	



</body>
</html>


<!-- taglib eklendi checkbox sonucunu yazdırabilmek için -->