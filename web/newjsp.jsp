<%-- 
    Document   : newjsp
    Created on : 22 mars 2022, 11:10:42
    Author     : Ra.Oli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>election</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/datepicker3.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
	
	<!--Custom Font-->
		<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
    <!--jsp:include page="naba1.jsp"/-->
    <nav style= "background-color:green " class="navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
                            <a class="navbar-brand" href="#"><span style="color: #000000">Election</span> de personne voter</a>
				<ul class="nav navbar-top-links navbar-right">
                                    <li class="dropdown"> <a href="llogin.jsp"><em class="fa fa-power-off"></em></a></li>
				</ul>
			</div>
		</div><!-- /.container-fluid -->
	</nav>
        <div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
            <div class="profile-sidebar">
                <div class="profile-userpic">
                    <a href="login.jsp"><img src="MADAGASCAR.gif" class="img-responsive" alt=""></a>
                </div>
                <div class="profile-usertitle">
                    <div class="profile-usertitle-name">Administrateur</div>
                    <div class="profile-usertitle-status">electorale</div>
                </div>
                <div class="clear"></div>
            </div>
            <div class="divider"></div>
            <BR>
               
            <BR>
            <ul class="nav menu">
                        <li><a href="list1"><em class="fa fa-list">&nbsp;</em> Electeur</a></li>
                      

                <!--li class="parent "><a data-toggle="collapse" href="#sub-item-1">
                        <em class="fa fa-navicon">&nbsp;</em> Multilevel <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="fa fa-plus"></em></span>
                        </a>
                        <ul class="children collapse" id="sub-item-1">
                                <li><a class="" href="#">
                                        <span class="fa fa-arrow-right">&nbsp;</span> Sub Item 1
                                </a></li>
                                <li><a class="" href="#">
                                        <span class="fa fa-arrow-right">&nbsp;</span> Sub Item 2
                                </a></li>
                                <li><a class="" href="#">
                                        <span class="fa fa-arrow-right">&nbsp;</span> Sub Item 3
                                </a></li>
                        </ul>
                </li-->
                </ul>
        </div><!--/.sidebar-->
		<br><br>
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Election</div>
					<div class="panel-body">
                                                 <form action="insert4" method="post">
						<div class="col-md-6">
                                                               <div class="form-group">
                                                                        <label>Choisier d' Election préferé</label>
                                                                                <c:forEach var="homme" items="${listHomme}">
                                                                                    <input><c:out value="${homme.id}"/><c:out value="${homme.nom}"/></input>
                                                                                    <input></input>
                                                                                </c:forEach>
                                                                          <div class="form-group">
                                                                            <div class="input-group">
                                                                            <div class="input-group-addon"><span class="glyphicon glyphicon-list-alt">Eecteur n°: </span></div>
                                                                             <input type="text" placeholder="Nom" value="<c:out value="${homme.id}"/>  <c:out value='${homme.nom}' />" class="form-control" name="id" required="required">
                                                                             </div>
                                                                             <span class="help-block" id="error"></span> 

                                                                        </div>

                                                                          <div class="form-group">
                                                                            <div class="input-group">
                                                                            <div class="input-group-addon"><span class="glyphicon glyphicon-list-alt">CIN:</span></div>
                                                                             <input type="text" placeholder="" value="<c:out value="${homme.email}"/>" class="form-control" name="email" required="required">
                                                                             </div>
                                                                             <span class="help-block" id="error"></span> 

                                                                        </div>
                                                                             
                                                                </div>
                                                                <div class="form-group">
                                                                        <label>Choisier d' Election préferé</label>
                                                                           <select  class="form-control" name="ide">
                                                                                <c:forEach var="election" items="${listElection}">
                                                                                    <option value="ide"><c:out value="${election.ide}"/><c:out value="${election.typee}"/></option>
                                                                                </c:forEach>
                                                                            </select>

                                                                </div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Où votre lieu que vous votez</label>
                                                                                
                                                                                <select class="form-control" name="idv">
                                                                                    <c:forEach var="vote" items="${listVote}">
                                                                                        <option value="idv"><c:out value="${vote.idv}"/><c:out value="${vote.lieu}"/></option>
										    </c:forEach>
                                                                                </select>
									</div>
									<div class="form-group">
										<label>Qui est le candidant que vous séléctionnez</label>
                                                                                <select multiple class="form-control" name="idc">
											
                                                                                <c:forEach var="candidant" items="${listCandidant}">
                                                                                  <option><c:out value=" N°: ${candidant.idc}"/>  <c:out value=" ${candidant.but}"/></option>
                                                                                </c:forEach>
										</select>
                                                                                
									</div>
                                                                    <div class="form-group">
									<label>Choisire image</label>
									<input type="file">
								    </div>
									<button type="submit" class="btn btn-primary">Submit Button</button>
									<button type="reset" class="btn btn-default">Reset Button</button>
								</div>
							</form>
						</div>
					</div>
				</div><!-- /.panel-->
			</div><!-- /.col-->
			
		</div><!-- /.row -->
	
	
<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/custom.js"></script>
	
</body>
</html>

