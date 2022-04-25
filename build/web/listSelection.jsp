<%-- 
    Document   : listSelection
    Created on : 23 mars 2022, 10:55:45
    Author     : Ra.Oli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>election</title>
        
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

        <link href="css/datepicker3.css" rel="stylesheet" type="text/css"/>

        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="navbar.jsp"/>
        <br>
        <div class="col-sm-10 col-sm-offset-3 col-lg-1O col-lg-offset-2 main">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h3 class="text-center">Resultat pour le derniere election</h3>
                    <hr>
                    <div class="container text-left">
                    <br>
                     <div class="col-sm-11 col-sm-offset-0 col-lg-11 col-lg-offset-0 main">
          
                    <table class="table table-bordered table-striped ">          

                        <thead>
                            <tr style="background-color: green" >
                                <th>Numéro </th>
                                <th>Electeur</th>
                                <th>Type d' election</th>
                                <th>Bureau de vote</th>
                                <th>Candidant</th>
                            </tr>
                        </thead>
                        <tbody>      
                            <c:forEach var="selection" items="${listSelection}">
                                <tr>
                                    <td><c:out value="${selection.ids}"/></td>
                                    <td><c:out value="${selection.id}"/>     <c:out value="${selection.nom}"/></td>
                                    <td><c:out value="${selection.ide}"/>    <c:out value="${selection.typee}"/></td>
                                    <td><c:out value="${selection.idv}"/>    <c:out value="${selection.lieu}"/></td>
                                    <td><c:out value="${selection.idc}"/>    <c:out value="${selection.nomc}"/></td>
                           <!--td > 
                                   <a class="btn btn-success btn-sm" href="edit2?idc=<c:out value='${candidant.idc}' />"><em class="fa fa-edit"></em></a>
                                    <a class="btn btn-danger btn-sm" href="deletc?idc=<c:out value='${candidant.idc}' />"><em class="fa fa-trash"></em></a> 
                              </td-->
                                </tr>
                            </c:forEach>  
                        </tbody>
                    </table>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/.sBODY-->
    </body>
</html>
