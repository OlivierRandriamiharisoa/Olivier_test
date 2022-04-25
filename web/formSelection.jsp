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
                <c:if test="${selection != null}">
                        <form action="update" method="post">
                    </c:if>
                        <c:if test="${selection == null}">
                            <form action="insert4" method="post">
                        </c:if>

                            <caption>
                                <h2>
                                    <c:if test="${selection != null}">
                                       </c:if>
                                    <c:if test="${selection == null}">
                                        Ajouter nouveau 
                                    </c:if>
                                </h2>
                            </caption>

                            <c:if test="${selection != null}">
                                <input type="hidden" name="ids" value="<c:out value='${selection.ids}' />" />
                            </c:if>

                            <div class="form-group">
                                    <div class="input-group">
                                    <div class="input-group-addon"><span class="glyphicon glyphicon-list-alt">Electeur N°:</span></div>
                                     <input type="text" placeholder="numéro" value="<c:out value='${selection.id}' />" class="form-control" name="id" required="required">
                                     </div>
                                     <span class="help-block" id="error"></span> 
                               
                            </div>
                            <div class="form-group">
                                 <div class="input-group">
                                    <div class="input-group-addon"><span class="glyphicon glyphicon-list-alt">election N°:</span></div>
                                    <input type="text" placeholder="nu "  value="<c:out value='${selection.ide}' />" class="form-control" name="ide">
                                </div>
                                     <span class="help-block" id="error"></span>
                            </div>
                            <div class="form-group">
                                    <div class="input-group">
                                    <div class="input-group-addon"><span class="glyphicon glyphicon-list-alt">vote N°:</span></div>
                                     <input type="text" placeholder="numéro" value="<c:out value='${selection.idv}' />" class="form-control" name="idv" required="required">
                                     </div>
                                     <span class="help-block" id="error"></span> 
                               
                            </div>
                            <div class="form-group">
                                 <div class="input-group">
                                    <div class="input-group-addon"><span class="glyphicon glyphicon-list-alt">candidant N°:</span></div>
                                    <input type="text" placeholder="nu "  value="<c:out value='${selection.idc}' />" class="form-control" name="idc">
                                </div>
                                     <span class="help-block" id="error"></span>
                            </div>
                            <button type="submit" class="btn btn-success btn-sm">Enregistrer</button>
                            
                        </form>
                </div>
            </div>
        </div>		
</body>
</html>


