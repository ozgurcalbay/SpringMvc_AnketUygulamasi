<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Anket Sayfa 2</title>
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


	<f:form action="anketconfirm" method="GET" modelAttribute="anket1">
	Öğrenim Durumunuz :<f:select  path="ogrenim_durumu">
	
	<f:options items="${anket1.ogr_durum}"/>	
	</f:select><br/><br/>
	
	
	Çalıştığınız Sektör :<f:radiobutton path="sektor" value="Ozel"/>Ozel &nbsp;&nbsp;
	<f:radiobutton path="sektor" value="Kamu"/>Kamu&nbsp;&nbsp;
	<f:radiobutton path="sektor" value="Serbest"/>Serbest<br/>
	
	<br/>
	Aylık Geliriniz :<f:select path="gelir">
	
	<f:options items="${anket1.aylik_gelir}"/>	
	</f:select><br/><br/>
	
	Kazancınızı En Çok Neye Harcıyorsunuz? :<br/><br/>
	<f:checkbox path="harcama" value="Ev Kirasi-Faturalar"/>Ev Kirasi-Faturalar&nbsp;
	<f:checkbox path="harcama" value="Giyim"/>Giyim
	<f:checkbox path="harcama" value="Yiyecek_Icecek"/>Yiyecek_Icecek
	<f:checkbox path="harcama" value="Seyahat"/>Seyahat<br/> <br/>
	
	Boş Zamanlarınızı Nasıl Değerlendiriyorsunuz? :<br/><br/>
	<f:checkbox path="bos_zaman" value="Kitap Okumak"/>Kitap Okumak&nbsp;
	<f:checkbox path="bos_zaman" value="Arkadaslarla Bulusmak"/>Arkadaslarla Bulusmak&nbsp;
	<f:checkbox path="bos_zaman" value="Sinemaya Gitmek"/>Sinemaya Gitmek&nbsp;
	<f:checkbox path="bos_zaman" value="Oyun Oynamak"/>Oyun Oynamak<br/> 
	
	
	
	
	<br/><input class="button button2"  value="Sonuçları Gönder" type="Submit"/>
	</f:form>


</body>
</html>