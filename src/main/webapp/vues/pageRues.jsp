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
	
	#myTable thead {
				display:block;
				width:100%;
				background-color:#ffffff;
				color:#0fb5d7;
			}
			#myTable tbody {
				display:block;
				width:100%;
				height:30em; /* 5 times the equivalent of a text "size". */
				overflow-y:scroll;
				background-color:#ffffff;
				color:#0fb5d7;
			}
		
			#myTable thead tr th:nth-child(1) { /* column 1 ! */
				width:20%;
			}
			#myTable thead tr th:nth-child(2) { /* column 2 */
				width:15%;
			}
			#myTable thead tr th:nth-child(3) { /* column 2 */
				width:30%;
			}
			#myTable thead tr th:nth-child(4) { /* column 2 */
				width:20%;
			}
			#myTable thead tr th:nth-child(5) { /* column 2 */
				width:30%;
			}
			#myTable thead tr th:nth-child(6) { /* column 2 */
				width:30%;
			}
			#myTable thead tr th:nth-child(7) { /* column 2 */
				width:30%;
			}
			
			#myTable tbody tr:first-child td:nth-child(1) { /* column 1 ! */
				width:20%;
			}
			#myTable tbody tr:first-child td:nth-child(2) { /* column 2 */
				width:15%;
			}
			#myTable tbody tr:first-child td:nth-child(3) { /* column 2 */
				width:30%;
			}
			#myTable tbody tr:first-child td:nth-child(4) { /* column 2 */
				width:20%;
			}
			#myTable tbody tr:first-child td:nth-child(5) { /* column 2 */
				width:30%;
			}
			#myTable tbody tr:first-child td:nth-child(6) { /* column 2 */
				width:30%;
			}
			#myTable tbody tr:first-child td:nth-child(7) { /* column 2 */
				width:30%;
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
							<span>UP8</span> Nouvelles Technologies 2018 <br> <br>			
						</h1>
						<h3 class="text-white">
							<span>Liste des Rues</span>	
						</h3>	
						<form  class="serach-form-area">
							<div class="form-wrap">
								<div class="col-lg-8">
								<input id="streetSearch" type="text" class="form-control" name="search" placeholder="Recherche d'un pays par Code ISO">
									<br>
									<table width="150%"id="myTable" border=1>
							        <thead>
					                <tr>
					                    <th><spring:message code="rues.liste.idStreetName"/></th>
					                    <th><spring:message code="rues.liste.idStreetType"/></th>
					                    <th><spring:message code="rues.liste.label"/></th>
					                    <th><spring:message code="rues.liste.idZip"/></th>
					                    <th><spring:message code="rues.liste.idCountry"/></th>
					                    <th><spring:message code="rues.liste.idCity"/></th>
					                    <th><spring:message code="rues.liste.idLanguage"/></th>
					                </tr>
					            </thead>
					            <tbody>
					                <c:forEach items="${listStreet}" var="street">
					                    <tr>
					                        <td><c:out value="${street.idStreetName}"/></td>
					                        <td><c:out value="${street.idStreetType}"/></td> 
					                        <td><c:out value="${street.streetLabel}"/></td>   
					                        <td><c:out value="${street.idZip}"/></td> 
					                        <td><c:out value="${street.idCountry}"/></td> 
					                        <td><c:out value="${street.idCity}"/></td> 
					                        <td><c:out value="${street.idLanguage}"/></td>                   
					                    </tr>
					                </c:forEach>
					            </tbody>
							       </table>	
								</div>
							</div>				
						</form>
					</div>				
				</div>
			</div>
		</section>
		
		<script>
	  		//-----------------------------------------------------------------------------------
				var streetList = 
			    [
					 <c:forEach items="${listStreet}" var="item" varStatus="statut">  
			           '${item.streetLabel}'
			           <c:if test="${!statut.last}">    ,    </c:if>   
			         </c:forEach> 
		        ]; 
			  $( "#streetSearch" ).autocomplete({
				    source: streetList
				  });
			//-----------------------------------------------------------------------------------
		</script>
		
    </body>
</html>