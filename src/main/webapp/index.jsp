<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
	    <link href="https://cdnjs.cloudflare.com/ajax/libs/easy-autocomplete/1.3.5/easy-autocomplete.min.css" rel="stylesheet" type="text/css">
	     <script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
	     <script src="https://cdnjs.cloudflare.com/ajax/libs/easy-autocomplete/1.3.5/jquery.easy-autocomplete.min.js" type="text/javascript" ></script>
	     <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	     <script src="//code.jquery.com/jquery-1.10.2.js"></script>
	     <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script> 
	     
	     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" type="text/css">
	     <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
	     <link href="<c:url value="/resources/css/nice-select.css" />" rel="stylesheet">
	     
	     <script src="<c:url value="/resources/js/main.js" />"></script>
	     
		 <title><spring:message code="pays.page.titre"/></title>

    </head>
    
    <body>
    	   	
    	<section class="banner-area relative" id="home">	
			<div class="overlay overlay-bg"></div>
			<div class="container">
				<div class="row fullscreen d-flex align-items-center justify-content-center">
					<div class="banner-content col-lg-12">
						<h1 class="text-white">
							<span>UP8</span> Nouvelles Technologies 2018				
						</h1>	
						<form  class="serach-form-area">
							<div class="row justify-content-center form-wrap">
								<div class="col-lg-4 form-cols">
									<b><p><a href="country" style="color:#ffffff ; font-size: large"> Liste des pays </a></p></b>
									<b><p><a href="area" style="color:#ffffff ; font-size: large"> liste des provinces </a></p></b>
									<b><p><a href="city" style="color:#ffffff ; font-size: large"> Liste des villes </a></p></b>
									<b><p><a href="street" style="color:#ffffff ; font-size: large"> Liste des Rues de Saint-Denis </a></p></b>
									<b><p><a href="language" style="color:#ffffff ; font-size: large"> Liste des Langues </a></p></b>
									<br>
									<b><p><a href="search" style="color:#ffffff ;  font-size: large"> Rechercher et visualiser l'emplacement d'une adresse </a></p></b>
								</div>
								
							</div>				
						</form>		
					</div>	
					
				</div>
			</div>
		</section>
    </body>
</html>