<%-- 
    Document   : list-homme
    Created on : 13 mars 2022, 06:43:42
    Author     : Ra.Oli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listes des touts personnes</title>

        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

        <link href="css/datepicker3.css" rel="stylesheet" type="text/css"/>

        <link href="css/styles.css" rel="stylesheet" type="text/css"/>


        <!--Custom Font-->
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="navbar.jsp"/>
        <br>
        <div class="col-sm-10 col-sm-offset-3 col-lg-1O col-lg-offset-2 main">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h3 class="text-center">Listes des candidant</h3>
                    <hr>
                    <div class="container text-left">

                        <a href="<%=request.getContextPath()%>/new2" class="btn btn-success">Ajouter nouveau candidant</a>
                          
                    <br>
                     <div class="col-sm-11 col-sm-offset-0 col-lg-11 col-lg-offset-0 main">
          
                    <table class="table table-bordered table-striped ">          

                        <thead>
                            <tr style="background-color: green" >
                                <th>Matricule</th>
                                <th>Objectif</th>
                                <th>Nom</th>
                                <th>Date de tirage</th>
                                <th>ACTION</th>

                            </tr>
                        </thead>
                        <tbody>       
                            <c:forEach var="candidant" items="${listCandidant}">
                                <tr>
                                    <td><c:out value="${candidant.idc}"/></td>
                                    <td><c:out value="${candidant.nomc}"/></td>
                                    <td><c:out value="${candidant.but}"/></td>
                                     <td><c:out value="${candidant.datetire}"/></td>
                           <td > 
                                   <a class="btn btn-success btn-sm" href="edit2?idc=<c:out value='${candidant.idc}' />"><em class="fa fa-edit"></em></a>
                                    <a class="btn btn-danger btn-sm" href="deletc?idc=<c:out value='${candidant.idc}' />"><em class="fa fa-trash"></em></a> 
                              </td>
                                </tr>
                            </c:forEach>  
                        </tbody>
                    </table>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/.sBODY-->
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

