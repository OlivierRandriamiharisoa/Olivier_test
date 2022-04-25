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
	
        <div class="col-sm-9 col-sm-offset-2 col-lg-10 col-lg-offset-2 main">
            <div class="panel panel-default">
                <div class="panel-body">
                 <div class="col-md-10 col-sm-offset-1 ">
                                     <div class="panel panel-default">
                                      <div class="panel-body">
                                               <p>Sur la barre de navigation, le logo à gauche c’est le logo de DGI Madagascar et à droite 
                                            il y a trois menu s’authentifier, s’enregistrer et Espace Administrateur. Le menu s’authentifier 
                                            retourne sur la page d’accueil ou bien sur la page d’authentification des utilisateurs, le menu 
                                            s’enregistrer c’est pour avoir le formulaire d’enregistrement des clients de l’impôt afin de 
                                            devenir utilisateur de ce site et l’Espace Administrateur ce sont les ingénieurs informatique de 
                                            l’impôts seulement qui peut accéder à cette page pour gérer les utilisateurs et ces informations.
                                        </p>                                    
                                    </div> </div> </div>
                <c:if test="${homme != null}">
                        <form action="update" method="post">
                    </c:if>
                        <c:if test="${homme == null}">
                            <form action="insert" method="post">
                        </c:if>

                            <caption>
                                <h2>
                                    <c:if test="${homme != null}">
                                       
                                    </c:if>
                                    <c:if test="${homme == null}">
                                       
                                    </c:if>
                                </h2>
                            </caption>

                            <c:if test="${homme != null}">
                                <input type="hidden" name="id" value="<c:out value='${homme.id}' />" />
                            </c:if>

                                <div class="row">
                                    
                                    <div class="col-md-10 col-sm-offset-1 ">
                                   <div class="form-group">
                                    <div class="input-group">
                                    <div class="input-group-addon"><span >CARTE D' ELECTION DE:</span></div>
                                    
                                     <input type="text" placeholder="Nom" value="<c:out value='${homme.nom}' /><c:out value='${homme.prenom}' />" class="form-control" name="nom" required="required">
                                     </div>
                                     <span class="help-block" id="error"></span> 
                               
                                     </div></div>
                                   <div class="col-md-5 col-sm-offset-1 ">
                                     <div class="panel panel-default">
                                      <div class="panel-body">
                                               <p>  fepetra famaizana </p>
                                                  <p> ny fanaovana hosoka amin'ny fampiasana karatry ny mpifidy sy amin'ny fisoratana anarana ao anaty lisitry ny mpifidy dia voarara 
                                                   
                                                   ary faizin'ny lalana araka ny voalazan'ny ny andininy faha-216 amin'ny lalana fehizoro laharana faha-2018-008 tamin'ny 11
                                                   mey 2018 mahakasika ny fitondrana ankapobe ny fifidianana sy ny fitsapa-kevi-bahoaka
                                        </p>                                     
                                        <p>FEPETRA ANKAPOBENY</p>
                                            <p>Araka ny voalazan'ny andininy faha49sy faha50 amin'ny Lalàna fehizoro laharana
                                            faha2018-008 tamin'ny 11 mey 2018 mikasika ny fitondrana ankapobeny ny fifidianana sy ny fitsapa-kevi-bahoaka 
                                            dia tsy maintsy mampandre ny voamieram-pifidianana anivon'ny Kaominina ny voakasik'izany raha misy fahaverezan'ny
                                            Karatra ;mba hanomezana azy tapakila fanamarinana.sSur la barre de navigation, le logo à gauche c’est le logo de DGI Madagascar et à droite 
                                       </p>
                                    </div> </div> </div>
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
                                    </div>

                            
                            <!--button type="submit" class="btn btn-success btn-sm">Enregistrer</button-->
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

