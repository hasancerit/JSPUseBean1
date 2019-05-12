<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@page import="usebeanp.*"%>

<html>

<head>
	 <title>USE BEAN</title>
	 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>


<body>
	<!-- IMPLICIT OBJELERINI KULLANARAK ÇEKMEK -->
	
	<%
		ModelKisi kisi = (ModelKisi) request.getAttribute("deniz");
		ModelKisi kisi2 = (ModelKisi) pageContext.getAttribute("hasan", PageContext.REQUEST_SCOPE);
	%>	
	
	<%=kisi.getAd() %>
	<%=kisi.getSoyad() %>
	<%=kisi.getYas() %>
	<%=kisi2.getAd() %>
	<%=kisi2.getSoyad() %>
	<%=kisi2.getYas() %>
	
	
	<!-- jsp:useBean ACTIONU KULLANARAK ÇEKMEK -->
	<!-- req attrler icinde Hasan var ise onu cekecek, yoksa yeni olustaracak-->
	<jsp:useBean id="hasan" class="usebeanp.ModelKisi" scope="request"/>
	
	<jsp:setProperty property="yas" name="hasan" value="20"/>
	<jsp:getProperty property="ad" name="hasan" />
	<jsp:getProperty property="soyad" name="hasan" />
	<jsp:getProperty property="yas" name="hasan" />
	
		<!-- onur adında bir req attr yollamaıştık, bu durumda onur adinda degerli null olan bir modelkisi sinifiolusacaktir.
		setProperty ile bu degerleri atayabiliriz. Fakat ya onur adinda bir kisi eklemis olsaydim?
		eger attr icinde aranan nesne yok ise deger atamak,
			 attr icinde aranan nesne var ise aynı kalmasını istiyorsak; -->
	<jsp:useBean id="onur" class="usebeanp.ModelKisi" scope="request">
		<!-- req attr icinde yok ise ve useBean yeni bir modelkisi olusturduysa set'ler calisir
				 attr icinde aranan var ise ve useBean direkt bunu cektiyse aranan calismaz -->
		<jsp:setProperty property="ad" value="onur" name="onur" />
		<jsp:setProperty property="soyad" value="gun" name="onur" />
		<jsp:setProperty property="yas" value="22" name="onur" />
	</jsp:useBean>
	
	<jsp:getProperty property="ad" name="onur" />
	<jsp:getProperty property="soyad" name="onur" />
	<jsp:getProperty property="yas" name="onur" />
	
</body>

</html>