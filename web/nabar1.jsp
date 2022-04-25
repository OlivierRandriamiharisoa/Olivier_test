<%-- 
    Document   : navbar.jsp
    Created on : 11 mars 2022, 11:15:09
    Author     : Ra.Oli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>ELECTION</title>
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
                    <img src="MADAGASCAR.gif" class="img-responsive" alt="">
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
        <div class="row">
			
</body>
</html>
