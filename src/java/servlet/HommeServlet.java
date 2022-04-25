/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.HommeDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modele.Candidant;
import modele.Homme;
import modele.Selection;
import modele.Vote;

/**
 *
 * @author Ra.Oli
 */

@WebServlet("/")
public class HommeServlet extends HttpServlet {

    private HommeDao hommeDao;

    public void init() {
        hommeDao = new HommeDao();
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        try {
            switch (action) {
                case ("/new"):
                    showForm(request, response);
                    break;
                case ("/new2"):
                    showForm2(request, response);
                    break;
                case ("/new3"):
                    showForm3(request, response);
                    break;
                case "/insert":
                    insertHomme(request, response);
                    break;
                case "/insert2":
                    insertCandidant(request, response);
                    break;
                case "/insert3":
                    insertVote(request, response);
                    break;
                case "/insert4":
                    insertSelection(request, response);
                    break;
                case "/delete":
                    deleteHomme(request, response);
                    break;
                case "/deletec":
                    deleteCandidant(request, response);
                    break;
                case "/edit":
                    showEditForm(request, response);
                    break;
                case "/edit2":
                    showEditForm2(request, response);
                    break;

                case "/update":
                    updateHomme(request, response);
                    break;
                case "/updatec":
                    updateCandidant(request, response);
                    break;
                case "/listc":
                    listCandidant(request, response);
                    break;
                case "/listv":
                    listVote(request, response);
                    break;
                case "/lists":
                    listSelection(request, response);
                    break;
                case "/selection":
                   showEditForme(request, response);
                    break;

                case "/list1":
                    listElect(request, response);
                    break;
                case "/list2":
                    listMin(request, response);
                    break;
                case "/list3":
                    listDec(request, response);
                    break;
                default:
                    listHomme(request, response);
                    break;
            }
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void listHomme(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<Homme> listHomme = hommeDao.getAllHomme();
        request.setAttribute("listHomme", listHomme);
        RequestDispatcher dispatcher = request.getRequestDispatcher("list-homme.jsp");
        dispatcher.forward(request, response);
    }

    private void listCandidant(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<Candidant> listCandidant = hommeDao.getAllCandidant();
        request.setAttribute("listCandidant", listCandidant);
        RequestDispatcher dispatcher = request.getRequestDispatcher("listCandidant.jsp");
        dispatcher.forward(request, response);
    }

    private void listVote(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<Vote> listVote = hommeDao.getAllVote();
        request.setAttribute("listVote", listVote);
        RequestDispatcher dispatcher = request.getRequestDispatcher("listVote.jsp");
        dispatcher.forward(request, response);
    }
    private void listSelection(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<Selection> listSelection = hommeDao.getAllSelection();
        request.setAttribute("listSelection", listSelection);
        RequestDispatcher dispatcher = request.getRequestDispatcher("listSelection.jsp");
        dispatcher.forward(request, response);
    }

    private void listElect(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<Homme> listHomme = hommeDao.getAllElect();
        request.setAttribute("listElect", listHomme);
        RequestDispatcher dispatcher = request.getRequestDispatcher("list-e.jsp");
        dispatcher.forward(request, response);
    }

    private void listDec(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<Homme> listHomm = hommeDao.getAllDec();
        request.setAttribute("listDec", listHomm);
        RequestDispatcher dispatcher = request.getRequestDispatcher("list-d.jsp");
        dispatcher.forward(request, response);
    }

    private void listMin(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<Homme> listHomme = hommeDao.getAllMin();
        request.setAttribute("listMin", listHomme);
        RequestDispatcher dispatcher = request.getRequestDispatcher("list-m.jsp");
        dispatcher.forward(request, response);
    }
    private void stat(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<Selection> listSele = hommeDao.getAllSele();
        request.setAttribute("listSele", listSele);
        RequestDispatcher dispatcher = request.getRequestDispatcher("stat.jsp");
        dispatcher.forward(request, response);
    }

    private void showForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        RequestDispatcher dispatcher = request.getRequestDispatcher("homme-form.jsp");
        dispatcher.forward(request, response);
    }

    private void showForm2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        RequestDispatcher dispatcher = request.getRequestDispatcher("formCandidant.jsp");
        dispatcher.forward(request, response);
    }

    private void showForm3(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        RequestDispatcher dispatcher = request.getRequestDispatcher("formVote.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Homme homme = hommeDao.selectHommeById(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("homme-form.jsp");
        request.setAttribute("homme", homme);
        dispatcher.forward(request, response);
    }
    
     private void showEditForme(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
       Homme homme = hommeDao.selectHommeById(id);
        List<Vote> listVote = hommeDao.getAllVote();
        List<Candidant> listCandidant = hommeDao.getAllCandidant();
        RequestDispatcher dispatcher = request.getRequestDispatcher("newjsp.jsp");
        request.setAttribute("homme", homme);
        request.setAttribute("listVote", listVote);
        request.setAttribute("listCandidant", listCandidant);
       dispatcher.forward(request, response);
    }
    private void showEditForm2(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int idc = Integer.parseInt(request.getParameter("idc"));
        Candidant candidant = hommeDao.selectCandidantByIdc(idc);
        RequestDispatcher dispatcher = request.getRequestDispatcher("formCandidant.jsp");
        request.setAttribute("candidant", candidant);
        dispatcher.forward(request, response);
    }
    private void insertCandidant(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        String nomc = request.getParameter("nomc");
        String but = request.getParameter("but");
        String datetire = request.getParameter("datetire");
        Candidant newCandidant = new Candidant(nomc, but, datetire);
        hommeDao.insertCandidant(newCandidant);
        System.out.println(newCandidant);
        response.sendRedirect("listc");
    }
    private void insertSelection(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
       
        int id = Integer.parseInt(request.getParameter("id"));
        int ide = Integer.parseInt(request.getParameter("ide"));
        int idv = Integer.parseInt(request.getParameter("idv"));
        int idc = Integer.parseInt(request.getParameter("idc"));
        Selection newSelection = new Selection(id, ide, idv, idc);
        hommeDao.insertSelection(newSelection);
        System.out.println(newSelection);
        response.sendRedirect("lists");
    }

    private void insertVote(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        String lieu = request.getParameter("lieu");
        Vote newVote = new Vote(lieu);
        hommeDao.insertVote(newVote);
        System.out.println(newVote);
        response.sendRedirect("listv");
    }

    private void insertHomme(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {

        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String adresse = request.getParameter("adresse");
        String sexe = request.getParameter("sexe");
        String naissence = request.getParameter("naissence");
        String email = request.getParameter("email");
        String dece = request.getParameter("dece");

        Homme newHomme = new Homme(nom, prenom, adresse, sexe, naissence, email, dece);

        hommeDao.insertHomme(newHomme);
        System.out.println(newHomme);

        response.sendRedirect("list");
    }

    private void updateHomme(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String adresse = request.getParameter("adresse");
        String sexe = request.getParameter("sexe");
        String naissence = request.getParameter("naissence");
        String email = request.getParameter("email");
        String dece = request.getParameter("dece");

        Homme homme = new Homme(id, nom, prenom, adresse, sexe, naissence, email, dece);

        hommeDao.updateHomme(homme);
        System.out.println(homme.toString());
        response.sendRedirect("list");
    }
    private void updateCandidant(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int idc = Integer.parseInt(request.getParameter("idc"));
        String nomc = request.getParameter("nomc");
        String but = request.getParameter("but");
        String datetire = request.getParameter("datetire");

        Candidant candidant = new Candidant(idc, nomc, but, datetire);

        hommeDao.updateCandidant(candidant);
        System.out.println(candidant.toString());
        response.sendRedirect("listc");
    }

    private void deleteHomme(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        hommeDao.deleteHomme(id);
        response.sendRedirect("list");
    }

    private void deleteCandidant(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int idc = Integer.parseInt(request.getParameter("idc"));
        hommeDao.deleteCandidat(idc);
        response.sendRedirect("listc");
    }
}
