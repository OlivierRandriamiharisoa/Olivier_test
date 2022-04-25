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
                <c:if test="${homme != null}">
                        <form action="update" method="post">
                    </c:if>
                        <c:if test="${homme == null}">
                            <form action="insert" method="post">
                        </c:if>

                            <caption>
                                <h2>
                                    <c:if test="${homme != null}">
                                       Modifier
                                        <script>confirm('Etes-vous modifierles information de  <c:out value='${homme.nom}' /> ?')</script>;
                                    </c:if>
                                    <c:if test="${homme == null}">
                                        Ajouter
                                    </c:if>
                                </h2>
                            </caption>

                            <c:if test="${homme != null}">
                                <input type="hidden" name="id" value="<c:out value='${homme.id}' />" />
                            </c:if>

                            <div class="form-group">
                                    <div class="input-group">
                                    <div class="input-group-addon"><span class="glyphicon glyphicon-list-alt">Nom</span></div>
                                     <input type="text" placeholder="Nom" value="<c:out value='${homme.nom}' />" class="form-control" name="nom" required="required">
                                     </div>
                                     <span class="help-block" id="error"></span> 
                               
                            </div>

                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon"><span class="glyphicon glyphicon-list-alt">Prénom</span></div>
                                     <input type="text" placeholder="Prénom" value="<c:out value='${homme.prenom}' />" class="form-control" name="prenom">
                                     </div>
                                     <span class="help-block" id="error"></span>
                               
                            </div>

                            <div class="form-group">
                                 <div class="input-group">
                                    <div class="input-group-addon"><span class="glyphicon glyphicon-list-alt">Cexe</span></div>
                                <input type="text" placeholder="Sexe" value="<c:out value='${homme.sexe}' />" class="form-control" name="sexe" required="required">
                                </div>
                                     <span class="help-block" id="error"></span>
                            </div>

                            <div class="form-group">
                                 <div class="input-group">
                                    <div class="input-group-addon"><span class="glyphicon glyphicon-list-alt">Adresse</span></div>
                                <input type="text" placeholder="Adresse" value="<c:out value='${homme.adresse}' />" class="form-control" name="adresse">
                                </div>
                                     <span class="help-block" id="error"></span>
                            </div>

                            <div class="form-group">
                                 <div class="input-group">
                                    <div class="input-group-addon"><span class="glyphicon glyphicon-list-alt">Date de naissance</span></div>
                                <input type="date"  value="<c:out value='${homme.naissence}' />" class="form-control" name="naissence">
                                </div>
                                     <span class="help-block" id="error"></span>
                            </div>
                            
                            <div class="form-group">
                                 <div class="input-group">
                                    <div class="input-group-addon"><span class="glyphicon glyphicon-list-alt">CIN</span></div>
                                    <input type="number" placeholder="0000000000" value="<c:out value='${homme.email}' />" class="form-control" name="email">
                                </div>
                                     <span class="help-block" id="error"></span>
                            </div>
                            
                            <div class="form-group">
                                 <div class="input-group">
                                    <div class="input-group-addon"><span class="glyphicon glyphicon-list-alt">Date de décé</span></div>
                                <input type="date"  value="<c:out value='${homme.dece}' />" class="form-control" name="dece">
                                </div>
                                     <span class="help-block" id="error"></span>
                            </div>
                            
                            <button type="submit" class="btn btn-success btn-sm">Enregistrer</button>
                             <button type="reset" class="btn btn-default">Aniler</button>
                        </form>
                </div>
            </div>
        </div>
     </body>
</html>
