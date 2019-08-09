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
		 
		 
		 <style>
	       .ui-autocomplete {
	            max-height: 200px;
	            overflow-y: auto;
	            /* prevent horizontal scrollbar */
	            overflow-x: hidden;
	            /* add padding to account for vertical scrollbar */
	            padding-right: 20px;
	        } 
		</style>

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
									<input id="countrySearch" type="text" class="form-control" name="search" placeholder="Quel pays recherchez vous ? (Code ISO)">
									<br>
									<input id="areaSearch" type="text" class="form-control" name="search" placeholder="Quel province recherchez vous ?">
									<br>
									<input id="citySearch" type="text" class="form-control" name="search" placeholder="Quel ville recherchez vous ?">
									<br>
									<input id="streetSearch" type="text" class="form-control" name="search" placeholder="Quel rue recherchez vous ?">				
							</div>
						</form>
					
						
					</div>		
					<div class="col-lg-12">
							<a href="map" role="button" class="btn btn-info" style="background-color:#80e2f6 ; border-color:#80e2f6 ;
							        width: 160px ;  border-radius:0"> 
						      <span href="map" class="lnr lnr-magnifier"></span> Voir l'emplacement
						 	</a>
						</div>						
				</div>
			</div>
		</section>
		 
		
		<script>
	  		//-----------------------------------------------------------------------------------
				var countryList = 
			    [
					 <c:forEach items="${table.listCountry}" var="item" varStatus="statut">  
			           '${item.codeIso}'
			           <c:if test="${!statut.last}">    ,    </c:if>   
			         </c:forEach> 
		        ]; 
			  $( "#countrySearch" ).autocomplete({
				    source: countryList
				  });
			//-----------------------------------------------------------------------------------
		</script>
		<script>
				var areaList = 
			    [
					 <c:forEach items="${table.listArea}" var="item" varStatus="status">  
			           '${item.idLanguage}'
			           <c:if test="${!status.last}">     ,    </c:if>   
			         </c:forEach> 
		        ]; 
			  $( "#areaSearch" ).autocomplete({
				    source: areaList,
				    highlightItem: true,
			        multiple: true,
			        multipleSeparator: " "
				  });
		</script>	
		<script>
			//-----------------------------------------------------------------------------------
			var cityList = 
			    [
					 <c:forEach items="${table.listCity}" var="item" varStatus="status">  
			           '${item.cityLabel}'
			           <c:if test="${!status.last}">     ,     </c:if>   
			         </c:forEach> 
		        ]; 
			  $( "#citySearch" ).autocomplete({
				    source: cityList,
				    highlightItem: true,
			        multiple: true,
			        multipleSeparator: " "
				  });
		</script>
		<script>
			//-----------------------------------------------------------------------------------
			var streetList = 
			    [
					 <c:forEach items="${table.listStreet}" var="item" varStatus="status">  
			           '${item.streetLabel}'
			           <c:if test="${!status.last}">     ,     </c:if>   
			         </c:forEach> 
		        ]; 
			  $( "#streetSearch" ).autocomplete({
				    source: cityList,
				    highlightItem: true,
			        multiple: true,
			        multipleSeparator: " "
				  });
		</script>
		
    </body>
</html>