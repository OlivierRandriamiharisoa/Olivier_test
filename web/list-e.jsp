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
    <jsp:include page="nabar1.jsp"/>
       <br>
        <div class="col-sm-11 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
            <div class="panel panel-default">
                <div class="panel-body">
                <h3 class="text-center">Listes des personnes qui peut voter</h3>
                <hr>
                <div class="container text-left">

                    <!--a href="<%=request.getContextPath()%>/new" class="btn btn-success">Ajouter</a-->


                </div>
                <c:forEach var="homme" items="${listElect}"> 
             
                 </c:forEach>
                
                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                        <tr style="background-color: green" >
                            <th>Matricule</th>
                            <th>Nom</th>
                            <th>Prénom</th>
                            <th>Adresse</th>
                            <th>Sexe</th>
                            <th>Date de naissance</th>
                            <th>CIN</th>
                            <th>Faire l' election</th>
                        </tr>
                    </thead>
                    <tbody>       
                        <c:forEach var="homme" items="${listElect}">
                            <tr>
                                <td><c:out value="${homme.id}"/></td>
                                <td><c:out value="${homme.nom}"/></td>
                                <td><c:out value="${homme.prenom}"/></td>
                                <td><c:out value="${homme.adresse}"/></td>
                                <td><c:out value="${homme.sexe}"/></td>
                                <td><c:out value="${homme.naissence}"/></td>
                                 <td><c:out value="${homme.email}" /></td>
                                 <td ><a class="btn btn-success btn-sm" href="selection?id=<c:out value='${homme.id}' />"><em class="fa fa-download"></em></a>
                                
                                     <!--a class="btn btn-danger btn-sm" href="delete?id=<c:out value='${homme.id}' />"><em class="fa fa-trash"></em></a></td-->
                            </tr>
                        </c:forEach>          
                    </tbody>
                </table>
            </div>
        
        </div>
        </div><!--/.sBODY-->
	<script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
<!-- Bootstrap 4 -->
<script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
<!-- DataTables  & Plugins -->
<script src="js/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="js/dataTables.bootstrap4.min.js"></script>
<script src="js/responsive.bootstrap4.min.js" type="text/javascript"></script>
<script src="js/dataTables.responsive.min.js" type="text/javascript"></script>
<script src="js/dataTables.buttons.min.js" type="text/javascript"></script>
<script src="js/dataTables.bootstrap4.min.js" type="text/javascript"></script>
<script src="js/jszip.min.js" type="text/javascript"></script>
<script src="js/pdfmake.min.js" type="text/javascript"></script>
<script src="js/vfs_fonts.js" type="text/javascript"></script>
<script src="js/buttons.html5.js" type="text/javascript"></script>
<script src="js/buttons.print.min.js" type="text/javascript"></script>
<script src="js/buttons.colVis.min.js" type="text/javascript"></script>
<!-- AdminLTE App -->
<script src="js/adminlte.min.js" type="text/javascript"></script>
<!-- AdminLTE for demo purposes -->
<script src="js/adminlte.min.js" type="text/javascript"></script>
<!-- Page specific script -->
<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": true, "autoWidth": true,
      "buttons": ["excel", "pdf"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
  </script>
    </body>
</html>
