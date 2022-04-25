
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
</head>
<body>
    <nav style= "background-color:green " class="navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
                            <a class="navbar-brand" href="#"><span style="color: #000000">Election</span> de personne voter</a>
				
			</div>
		</div><!-- /.container-fluid -->
	</nav>
    <br><br><br>
    <div class="row">
    <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-primary">
                <div class="panel-heading" style="background: chartreuse" align="center">Autotificatio</div>
                    <div class="panel-body" align="center">
                        <label>Taper le bouton Electeur si vous va voter</label><br><br>
                             <a href="nabar1.jsp" type="submit" class="btn btn-success"><em>Electeur</em></a><br><br><br>
                        <label>Taper le bouton Admine si vous va controler election </label><br><br>
                         <a href="llogin.jsp" type="submit" class="btn btn-success"><em>Admine</em></a>
                    </div>
            </div>
    </div>
    
    </div><!-- /.row -->
</body>
</html>
