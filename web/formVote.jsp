<%-- 
    Document   : formeVete
    Created on : 22 mars 2022, 07:23:04
    Author     : Ra.Oli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajouter nouveau personne</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	
        <link href="css/datepicker3.css" rel="stylesheet" type="text/css"/>

        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
	
	
	<!--Custom Font--> </head>
    <body>
        
     <jsp:include page="navbar.jsp"/>
         <br><br>
	
        <div class="col-sm-9 col-sm-offset-3 col-lg-7 col-lg-offset-3 main">
            <div class="panel panel-default">
                <div class="panel-body">
                <c:if test="${vote != null}">
                        <form action="update" method="post">
                    </c:if>
                        <c:if test="${vote == null}">
                            <form action="insert3" method="post">
                        </c:if>

                            <caption>
                                <h2>
                                    <c:if test="${vote != null}">
                                       Modifier
                                    </c:if>
                                    <c:if test="${vote == null}">
                                        Ajouter nouveau bureau de vate
                                    </c:if>
                                </h2>
                            </caption>

                            <c:if test="${vote != null}">
                                <input type="hidden" name="idv" value="<c:out value='${vote.idv}' />" />
                            </c:if>
                            <div class="form-group">
                                    <div class="input-group">
                                    <div class="input-group-addon"></div>
                                     <input type="text" placeholder="exemple : Soanerana" value="<c:out value='${vote.lieu}' />" class="form-control" name="lieu" required="required">
                                     </div>
                                     <span class="help-block" id="error"></span> 
                            <button type="submit" class="btn btn-success btn-sm">Enregistrer</button>
                            </div>
                        </form>
                </div>
            </div>
        </div>
    
        <script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/custom.js"></script>
	<script>
		window.onload = function () {
	var chart1 = document.getElementById("line-chart").getContext("2d");
	window.myLine = new Chart(chart1).Line(lineChartData, {
	responsive: true,
	scaleLineColor: "rgba(0,0,0,.2)",
	scaleGridLineColor: "rgba(0,0,0,.05)",
	scaleFontColor: "#c5c7cc"
	});
};
	</script>
	
</html>
