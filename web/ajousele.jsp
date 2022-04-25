

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bari.util.Database"%>

<%@page import="com.bari.model.Client"%>


<%
    PreparedStatement pst;
    Connection conn = null;
    Statement statement = null;
    ResultSet resultSet = null;
    conn = Database.getConnection();

    if (request.getParameter("submitX") != null) {
        int idCli = Integer.parseInt(request.getParameter("idCli"));
        int idPro = Integer.parseInt(request.getParameter("idPro"));

        pst = conn.prepareStatement("Insert into panier VALUES(?,?,CURRENT_DATE())");
        pst.setInt(1, idCli);
        pst.setInt(2, idPro);

        pst.executeUpdate();
        response.sendRedirect("indexLogiciel.jsp");
    };
    if (request.getParameter("submitPanier") != null) {
        int idCli = Integer.parseInt(request.getParameter("idClient"));
        int idPro = Integer.parseInt(request.getParameter("idProd"));
        pst = conn.prepareStatement("Insert into panier VALUES(?,?,CURRENT_DATE())");
        pst.setInt(1, idCli);
        pst.setInt(2, idPro);
        pst.executeUpdate();
        response.sendRedirect("indexPanier.jsp");
    };
%>
<%
    if (request.getParameter("submit") != null) {

        String idCli = request.getParameter("emailCli");
        String idPro = request.getParameter("nomPro");
        pst = conn.prepareStatement("Insert into panier VALUES((select idCli FROM client WHERE client.emailCli=?),(SELECT idPro from produit WHERE produit.nomPro=?),CURRENT_DATE())");
        pst.setString(1, idCli);
        pst.setString(2, idPro);
        pst.executeUpdate();
        response.sendRedirect("indexLogiciel.jsp");
    }

%>


<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

        <title>E-LOG</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/tooplate-main.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/flex-slider.css">
        <!--
        Tooplate 2114 Pixie
        https://www.tooplate.com/view/2114-pixie
        -->
    </head>

    <body style="background: white">

        <script type="text/javascript">

            function ajout_cli() {
                document.location = "listpanier.jsp"
            }
            var selGate = 'empty';
            document.getElementById('cmbGate').onchange = function () {
                selGate = this.options[this.selectedIndex].text
                document.getElementById('idCli').innerHTML = selGate;
            }
        </script>
      
       <jsp:include page="front.jsp"/>
        

        <section style="margin-left: 30" >
            <div class="box-container">
                <div class="box">
                    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
                        <div class="container col-md-5">
                            <div class="card">
                                <div class="card-body">
                                    <form style="margin:center" >
                                        <% String action = request.getParameter("action");
                                            System.out.println(action);
                                        %>
                                        
                                                <fieldset class="form-group">
                                                    Selectionez votre adresse mail
                                                    <select name="emailCli" id="cmbGate"  >
                                                        <c:forEach items="${clients}" var="client">
                                                            <option ><c:out value="${client.emailCli}" /></option>
                                                        </c:forEach>
                                                    </select>
                                                </fieldset>
                                          
                                    </form>
                                </div>
                            </div>
                        </div> 

                    </div> 
                </div> 
            </div>                   
        </section>                    
               <div style="margin: 10px 50px 20px;"><i class="fas fa-shopping-basket" style="margin: 10px 50px 20px;"></i><input id="suiv" /></div>
        <!-- Pre He    ader -->
        <!-- Navigation -->
        <!-- Page Content -->
        <!-- Single Starts Here -->
        <!-- Single Page Ends Here -->
        <!-- Similar Starts Here -->
        <div class="featured-items">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-heading">
                            <a href="listlogiciel.jsp">
                            </a> 
                            <div class="line-dec"></div>
                            <h1> Choisisez le produit </h1>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="owl-carousel owl-theme">


                              <form>
                                    <c:forEach items="${produits}" var="produit" >
                            
                                    <div class="featured-item">
                                        <img width="80px" height="120px" src="images/<c:out value="${produit.image}" />" alt="">
                                        <h4><c:out value="${produit.nomPro}"/></h4>
                                        <h6 ><c:out value="${produit.prixPro}"/>Ar</h6>
                                        <div class="form-group">
                                        <input type="hidden" name="idProd" class="form-control" value="<c:out value="${produit.idPro}"/>">
                                        </div>
                                        <div class="form-group">
                                         <input type="hidden" name="idClient" class="form-control" value="1">
                                        </div>
                                        <button type="submit"  name="submitPanier" class="btn btn-secondary" onClick="affichage()>Ajouter au panier</button>
                                    </div>
                                      </c:forEach>
                                </form>
                          
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- Similar Ends Here -->
        <section style="margin-right: 4244px" id="product">  
            <div class="box-container">

                <div class="box">
                    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main"> 
                        <div class="row">
                            <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> 
                             `produit`(`idPro`, `nomPro`, `infoPro`, `prixPro`, `image`)
                            -->

                            <div class="container">
                                <h3 class="text-center">Liste de Commande </h3>
                                <hr>
                                <div class="container text-left">
                                    <h2 align="center"><font><strong>list Panier</strong></font>
                                        <table style="border: 0; margin-left: 45px">
                                            <tr>
                                                <th><a href= "PanierController?action=select&panierIdCli=<c:out value="${1}"/>&panierDates=<c:out value="${'2022-03-05'}"/>"  class="btn btn-success" onclick="javascript:ajout_cli()">Afficher</a>
                                                </th> 
                                                <th><a href="PanierController?action=select" class="btn btn-success">Nouveau </a>
                                                </th>
                                                <th><a href="PanierController?action=deleteall&panierIdCli=<c:out value="${panier.idCli}"/>&panierDates=<c:out value="${panier.dates}"/>  " class="btn btn-danger" >Anuler</a>
                                                </th> 
                                                <th><a href="lloginClient.jsp" class="btn btn-danger">Envoyer</a>
                                                </th>
                                            </tr>
                                        </table>
                                    </h2>
                                    <table class="table table-hover table-bordered results"  style="border-radius: 10px 10px 10px 10px ">
                                        <tr>

                                        </tr>
                                        <tr >

                                            <td><b>Nom</b></td>
                                            <td><b>Designation</b></td>
                                            <td><b>Image</b></td>
                                            <td><b>Prix</b></td>
                                            <td><b>Dates</b></td>

                                        </tr>
                                        <%                                            try {

                                                statement = conn.createStatement();
                                                String sql = "select client.idCli,client.nomCli,produit.idPro,produit.nomPro ,produit.image , produit.prixPro ,panier.dates from panier,client ,produit where client.idCli=panier.idCli and produit.idPro=panier.idPro and panier.dates=CURRENT_DATE()";

                                                resultSet = statement.executeQuery(sql);

                                                while (resultSet.next()) {
                                        %>
                                        <tr>
                                            <td type="hidden"><%=resultSet.getString("client.idCli")%></td>
                                            <td type="hidden"><%=resultSet.getString("produit.idPro")%></td>
                                            <td><%=resultSet.getString("client.nomCli")%></td>
                                            <td><%=resultSet.getString("produit.nomPro")%></td>
                                            <td><img img img-circle" width="30px" height="30px" src="images/<%=resultSet.getString("produit.image")%>"/></td>
                                            <td><%=resultSet.getString("produit.prixPro")%></td>
                                            <td><%=resultSet.getString("panier.dates")%></td>
                                            <td> <a href="PanierController?action=deleteall&panierIdCli=<%=resultSet.getString("client.idCli")%>&panierIdPro=<%=resultSet.getString("produit.idPro")%>&panierDates=<%=resultSet.getString("panier.dates")%>" class="fa fa-trash"></a></td>
                                        </tr>

                                        <%
                                                }

                                            } catch (Exception e) {
                                                e.printStackTrace();
                                            }
                                        %>
                                    </table>


                                </div>
                            </div>
                        </div>
                    </div>

                </div> 

            </div> 

        </section>

        <!-- Subscribe Form Starts Here -->

        <!-- Subscribe Form Ends Here -->



        <!-- Footer Starts Here -->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="logo">
                            <img src="assets/images/header-logo.png" alt="">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="footer-menu">
                            <ul>
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Help</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">How It Works ?</a></li>
                                <li><a href="#">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="social-icons">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-rss"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Ends Here -->


        <!-- Sub Footer Starts Here -->
        <div class="sub-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="copyright-text">
                            <p>Copyright &copy; 2019 Company Name 

                                - Design: <a rel="nofollow" href="https://www.facebook.com/tooplate">Tooplate</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <script type="text/javascript">
            var nombreDepart = 1;
            var nombreActuel = nombreDepart;

            function affichage() {
                document.getElementById('suiv').value = ++nombreActuel;
            }


        </script>
        <!-- Sub Footer Ends Here -->


        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


        <!-- Additional Scripts -->
        <script src="assets/js/custom.js"></script>
        <script src="assets/js/owl.js"></script>
        <script src="assets/js/isotope.js"></script>
        <script src="assets/js/flex-slider.js"></script>


        <script language = "text/Javascript">
            cleared[0] = cleared[1] = cleared[2] = 0; 
           
            function clearField(t) {                   //declaring the array outside of the
                if (!cleared[t.id]) {                      // function makes it static and global
                    cleared[t.id] = 1;  // you could use true and false, but that's more typing
                    t.value = '';         // with more chance of typos
                    t.style.color = '#fff';
                }
            }
        </script>


    </body>

</html>

