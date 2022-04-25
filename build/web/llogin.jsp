<%-- 
    Document   : login
    Created on : 11 mars 2022, 18:35:46
    Author     : Ra.Oli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Login</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/datepicker3.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
    <nav style= "background-color:green " class="navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
                            <a class="navbar-brand" href="#"><span style="color: #000000">Election</span> de personne voter</a>
				<ul class="nav navbar-top-links navbar-right">
                                    <li class="dropdown"><a class="dropdown-toggle count-info" data-toggle="dropdown" href="llogin.jsp">
                                            <em class="fa fa-power-off">&nbsp;</em></a>
                                    </li>
					
					<li class="dropdown"><a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
						<em class="fa fa-bell"></em><span class="label label-info">5</span>
					</a>
						<ul class="dropdown-menu dropdown-alerts">
							<li><a href="#">
								<div><em class="fa fa-envelope"></em> 1 New Message
									<span class="pull-right text-muted small">3 mins ago</span></div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
								<div><em class="fa fa-heart"></em> 12 New Likes
									<span class="pull-right text-muted small">4 mins ago</span></div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
								<div><em class="fa fa-user"></em> 5 New Followers
									<span class="pull-right text-muted small">4 mins ago</span></div>
							</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div><!-- /.container-fluid -->
	</nav>
    <br><br>
	<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
                            <div class="panel-heading" style="background: chartreuse" align="center">Administrateur</div>
                            <div class="panel-body" align="center">
                                <form action="<%=request.getContextPath()%>/login" method="post">
                            <div class="form-group">
                                <label align="center">Nome</label>
                                   <div class="input-group">
                                   <input class="form-control" placeholder="saisire votre nom" type="text" name="username" >
                                   </div> 
                                   <span class="help-block" id="error"></span>                     
                              </div>

                                <div class="form-group">
                                    <label>Mot de passe</label>
                                    <div class="input-group">
                                   <input class="form-control"  type="password" name="password" placeholder="saisire le mot de passe">
                                         </div> 
                                          <span class="help-block" id="error"></span> 
                                </div>
                           <input type="submit" class="btn btn-success" value="Se conecter" />
                           <button type="reset" class="btn btn-default">Aniler</button>
                          </form>
                         </div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->	
	

        <script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
