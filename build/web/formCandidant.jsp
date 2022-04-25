<%-- 
    Document   : homme-form
    Created on : 13 mars 2022, 06:28:11
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
	
	
	<!--Custom Font-->
    </head>
    <body>
        <jsp:include page="navbar.jsp"/>

         <br><br>
	
        <div class="col-sm-9 col-sm-offset-3 col-lg-7 col-lg-offset-3 main">
            <div class="panel panel-default">
                <div class="panel-body">
                <c:if test="${candidant != null}">
                        <form action="update" method="post">
                    </c:if>
                        <c:if test="${candidant == null}">
                            <form action="insert2" method="post">
                        </c:if>

                            <caption>
                                <h2>
                                    <c:if test="${candidant != null}">
                                       Modifier le rensegnement de candidant <c:out value='${candidant.nomc}' />
                                        <script>confirm('Etes-vous modifierles information de  <c:out value='${candidant.nomc}' /> ?')</script>;
                                    </c:if>
                                    <c:if test="${candidant == null}">
                                        Ajouter nouveau candidant
                                    </c:if>
                                </h2>
                            </caption>

                            <c:if test="${candidant != null}">
                                <input type="hidden" name="idc" value="<c:out value='${candidant.idc}' />" />
                            </c:if>

                            <div class="form-group">
                                    <div class="input-group">
                                    <div class="input-group-addon"><span class="glyphicon glyphicon-list-alt">Objectif de candidan</span></div>
                                     <input type="text" placeholder="Nom et prénom" value="<c:out value='${candidant.nomc}' />" class="form-control" name="nomc" required="required">
                                     </div>
                                     <span class="help-block" id="error"></span> 
                               
                            </div>
                            <div class="form-group">
                                 <div class="input-group">
                                    <div class="input-group-addon"><span class="glyphicon glyphicon-list-alt">Nom de candidant</span></div>
                                    <input type="text" placeholder="exemple :présudant "  value="<c:out value='${candidant.but}' />" class="form-control" name="but">
                                </div>
                                     <span class="help-block" id="error"></span>
                            </div>
                             <div class="form-group">
                                 <div class="input-group">
                                    <div class="input-group-addon"><span class="glyphicon glyphicon-list-alt">Date de tirage</span></div>
                                    <input type="date" placeholder="exemple :présudant "  value="<c:out value='${candidant.datetire}' />" class="form-control" name="datetire">
                                </div>
                                     <span class="help-block" id="error"></span>
                            </div>
                            <button type="submit" class="btn btn-success btn-sm">Enregistrer</button>
                            
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
		
</body>
</html>

