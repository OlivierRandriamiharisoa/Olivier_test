/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import modele.Candidant;
import modele.Homme;
import modele.Selection;
import modele.Vote;

/**
 *
 * @author Ra.Oli
 */
public class HommeDao {
    
   private final String HOST = "jdbc:mysql://localhost:3306/jspprojet?useSSL=false";
    private final String HOSTNAME = "root";
    private final String PASSWORD = "";

    String requet;
    Connection conn;
    Statement stm;

    /**
     * Methode pour faire la connection à la bases des données
     *
     * @return
     */
    protected Connection getConnection() {
        Connection connection = null;
        try {
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException ex) {
                ex.printStackTrace();
            }
            connection = DriverManager.getConnection(HOST, HOSTNAME, PASSWORD);

        } catch (SQLException e) {
            printSQLException(e);

        }
        return connection;
    }

    /**
     * Methode pour inseré nouveau étudiant dans la base des données
     *
     * @param etu
     */
    public void insertHomme(Homme homme) {

        try (Connection connection = getConnection();
                PreparedStatement pstm = connection.prepareStatement("INSERT INTO `homme` (`nom`, `prenom`, `adresse`, `sexe`, `naissence`,`email`,`dece`) VALUES (?,?,?,?,?,?,?);")) {

            pstm.setString(1, homme.getNom());
            pstm.setString(2, homme.getPrenom());
            pstm.setString(3, homme.getAdresse());
            pstm.setString(4, homme.getSexe());
            pstm.setString(5, homme.getNaissence());
            pstm.setString(6, homme.getEmail());
            pstm.setString(7, homme.getDece());
            System.out.println(pstm);
            System.out.println(pstm);
            pstm.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }
  
    public void insertCandidant(Candidant candidant) {
        try (Connection connection = getConnection();
                PreparedStatement pstm = connection.prepareStatement("INSERT INTO `candidant` (`nomc`, `but`, `datetire`) VALUES (?,?,?);")) {

            pstm.setString(1, candidant.getNomc());
            pstm.setString(2, candidant.getBut());
             pstm.setString(3, candidant.getDatetire());
            System.out.println(pstm);
            System.out.println(pstm);
            pstm.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }
    public void insertSelection(Selection selection) {
        try (Connection connection = getConnection();
                PreparedStatement pstm = connection.prepareStatement("INSERT INTO `selection` (`id`, `ide`, `idv`, `idc) VALUES (?,?,?,?);")) {

            pstm.setInt(1, selection.getId()); 
            pstm.setInt(2, selection.getIde());
             pstm.setInt(3, selection.getIdv());
              pstm.setInt(4, selection.getIdc());
             
            System.out.println(pstm);
            System.out.println(pstm);
            pstm.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }
    public void insertVote(Vote vote) {
        try (Connection connection = getConnection();
                PreparedStatement pstm = connection.prepareStatement("INSERT INTO `vote` (`lieu`) VALUES (?);")) {

            pstm.setString(1, vote.getLieu());
            System.out.println(pstm);
            System.out.println(pstm);
            pstm.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }
    /**
     * Methode pour requiperer tout le liste des étuant dans la base des données
     *
     * @return
     */
    public List<Homme> getAllHomme() {
        List<Homme> listHomme = new ArrayList<Homme>();

        try (Connection connection = getConnection();
                PreparedStatement pstm = connection.prepareStatement("SELECT `id`,`nom`,`prenom`,`adresse`,`sexe`,`naissence`,`email`,`dece`,((datediff( CURRENT_DATE(), naissence))/365) as an FROM `homme`");) {

            System.out.println(pstm);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String nom = rs.getString("nom");
                String prenom = rs.getString("prenom");
                String adresse = rs.getString("adresse");
                String sexe = rs.getString("sexe");
                 String naissence = rs.getString("naissence");
                String email = rs.getString("email");
                 String dece = rs.getString("dece");
                listHomme.add(new Homme(id, nom, prenom, adresse, sexe, naissence, email, dece));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return listHomme;
    } 
    
     public List<Homme> getAllElect() {
        List<Homme> listHomme = new ArrayList<Homme>();

        try (Connection connection = getConnection();
                PreparedStatement pstm = connection.prepareStatement("SELECT * FROM homme WHERE datediff( CURRENT_DATE(), naissence)>6570 AND dece=\"\"");) {

            System.out.println(pstm);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String nom = rs.getString("nom");
                String prenom = rs.getString("prenom");
                String adresse = rs.getString("adresse");
                String sexe = rs.getString("sexe");
                 String naissence = rs.getString("naissence");
                String email = rs.getString("email");
                 String dece = rs.getString("dece");
                listHomme.add(new Homme(id, nom, prenom, adresse, sexe, naissence, email, dece));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return listHomme;
    }
     public List<Homme> getAllMin() {
        List<Homme> listHomme = new ArrayList<Homme>();

        try (Connection connection = getConnection();
                PreparedStatement pstm = connection.prepareStatement("SELECT * FROM homme WHERE datediff( CURRENT_DATE(), naissence)<6570 AND dece=\"\"");) {

            System.out.println(pstm);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String nom = rs.getString("nom");
                String prenom = rs.getString("prenom");
                String adresse = rs.getString("adresse");
                String sexe = rs.getString("sexe");
                 String naissence = rs.getString("naissence");
                String email = rs.getString("email");
                 String dece = rs.getString("dece");
                listHomme.add(new Homme(id, nom, prenom, adresse, sexe, naissence, email, dece));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return listHomme;
    }
     public List<Homme> getAllDec() {
        List<Homme> listHomm = new ArrayList<Homme>();

        try (Connection connection = getConnection();
                PreparedStatement pstm = connection.prepareStatement("SELECT * FROM homme WHERE dece!=\"\" ");) {

            System.out.println(pstm);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String nom = rs.getString("nom");
                String prenom = rs.getString("prenom");
                String adresse = rs.getString("adresse");
                String sexe = rs.getString("sexe");
                 String naissence = rs.getString("naissence");
                String email = rs.getString("email");
                 String dece = rs.getString("dece");
                listHomm.add(new Homme(id, nom, prenom, adresse, sexe, naissence, email, dece));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return listHomm;
    }
    public List<Selection> getAllSele() {
        List<Selection> listSele = new ArrayList<Selection>();

        try (Connection connection = getConnection();
                PreparedStatement pstm = connection.prepareStatement("SELECT ids, COUNT(selection.id) as id, homme.nom, selection.ide, election.typee, selection.idv, vote.lieu, selection.idc, candidant.nomc FROM selection, homme, election, vote, candidant WHERE selection.id=homme.id AND selection.ide=election.ide AND selection.idv=vote.idv AND selection.idc=candidant.idc GROUP BY idc");) {

            System.out.println(pstm);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                int ids = rs.getInt("ids");
                int id = rs.getInt("id");
                int ide = rs.getInt("ide");
                int idv = rs.getInt("idv");
                int idc = rs.getInt("idc");
                 String nom = rs.getString("nom");
                 String lieu = rs.getString("lieu");
                 String typee = rs.getString("typee");
                String nomc = rs.getString("nomc");
                listSele.add(new Selection(ids, id, ide, idv, idc, nom, typee, lieu, nomc));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return listSele;
    }
     
       public List<Candidant> getAllCandidant() {
        List<Candidant> listCandidant = new ArrayList<Candidant>();

        try (Connection connection = getConnection();
                PreparedStatement pstm = connection.prepareStatement("SELECT * FROM `candidant`");) {

            System.out.println(pstm);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                int idc = rs.getInt("idc");
                String nomc = rs.getString("nomc");
                String but = rs.getString("but");
                 String datetire = rs.getString("datetire");
                listCandidant.add(new Candidant(idc, nomc, but,datetire));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return listCandidant;
    }
       public List<Vote> getAllVote() {
        List<Vote> listVote = new ArrayList<Vote>();

        try (Connection connection = getConnection();
                PreparedStatement pstm = connection.prepareStatement("SELECT * FROM `vote`");) {

            System.out.println(pstm);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                int idv = rs.getInt("idv");
                String lieu = rs.getString("lieu");
                listVote.add(new Vote(idv, lieu));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return listVote;
    }
        public List<Selection> getAllSelection() {
        List<Selection> listSelection = new ArrayList<Selection>();

        try (Connection connection = getConnection();
                PreparedStatement pstm = connection.prepareStatement("SELECT ids, selection.id, homme.nom, selection.ide, election.typee, selection.idv, vote.lieu, selection.idc, candidant.nomc FROM selection, homme, election, vote, candidant WHERE selection.id=homme.id AND selection.ide=election.ide AND selection.idv=vote.idv AND selection.idc=candidant.idc");) {

            System.out.println(pstm);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                int ids = rs.getInt("ids");
                int id = rs.getInt("id");
                int ide = rs.getInt("ide");
                int idv = rs.getInt("idv");
                int idc = rs.getInt("idc");
                 String nom = rs.getString("nom");
                 String lieu = rs.getString("lieu");
                 String typee = rs.getString("typee");
                String nomc = rs.getString("nomc");
                listSelection.add(new Selection(ids, id, ide, idv, idc, nom, typee, lieu, nomc));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return listSelection;
    }
        
    public Candidant selectCandidantByIdc(int idc) {
        Candidant candidant = null;
        try (Connection connection = getConnection();
                PreparedStatement pstm = connection.prepareStatement("SELECT `idc`, `nomc`, `but` FROM `candidant` WHERE `idc`= ?");) {
            pstm.setInt(1, idc);
            System.out.println(pstm);
            ResultSet rs = pstm.executeQuery();
             while (rs.next()) {
                 int id3 = rs.getInt("idc");
                String nomc = rs.getString("nomc");
                String but = rs.getString("but");
                 String datetire = rs.getString("datetire");
                candidant = new Candidant(idc, nomc, but, datetire);
            }
         } catch (SQLException e) {
            printSQLException(e);
        }
        return candidant;
    }
       
    public Vote selectVoteByIdv(int idv) {
        Vote vote = null;
        try (Connection connection = getConnection();
                PreparedStatement pstm = connection.prepareStatement("SELECT `idv`, `lieu` FROM `vote` WHERE `idv`= ?");) {
            pstm.setInt(1, idv);
            System.out.println(pstm);
            ResultSet rs = pstm.executeQuery();
             while (rs.next()) {
                 int id4 = rs.getInt("idv");
                String lieu = rs.getString("lieu");
                vote = new Vote(idv, lieu);
            }
         } catch (SQLException e) {
            printSQLException(e);
        }
        return vote;
    }   
    public Homme selectHommeById(int id) {
        Homme homme = null;

        try (Connection connection = getConnection();
                PreparedStatement pstm = connection.prepareStatement("SELECT `id`, `nom`, `prenom`, `adresse`, `sexe`, `naissence`,`email`,`dece` FROM `homme` WHERE `id`= ?");) {
            pstm.setInt(1, id);
            System.out.println(pstm);

            ResultSet rs = pstm.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {

                 int id1 = rs.getInt("id");
                String nom = rs.getString("nom");
                String prenom = rs.getString("prenom");
                String adresse = rs.getString("adresse");
                String sexe = rs.getString("sexe");
                 String naissence = rs.getString("naissence");
                String email = rs.getString("email");
                 String dece = rs.getString("dece");
                homme = new Homme(id1, nom, prenom, adresse, sexe, naissence, email, dece);
            }

        } catch (SQLException e) {
            printSQLException(e);
        }
        return homme;
    }
    /**
     * Methode pour suprimmer l'étudiant par matricule
     *
     * @param matricule
     * @return
     * @throws SQLException
     */
    public boolean deleteHomme(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection();
                PreparedStatement statement = connection.prepareStatement("DELETE FROM `homme` WHERE `homme`.`id` = ?");) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
     public boolean deleteCandidat(int idc) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection();
                PreparedStatement statementc = connection.prepareStatement("DELETE FROM `candidant` WHERE `candidant`.`idc` = ?");) {
            statementc.setInt(1, idc);
            rowDeleted = statementc.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    /**
     * Methode pour maitre à jour le information des étudiant dans la bases des
     * données
     *
     * @param etu
     * @return
     * @throws SQLException
     */
    public boolean updateHomme(Homme homme) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection();
                PreparedStatement pstm = connection.prepareStatement("UPDATE `homme` SET `nom` = ?, `prenom` = ?, `adresse` = ?, `sexe` = ?, `naissence` = ?, `email` = ?, `dece` = ? WHERE `id` = ?;");) {
            pstm.setString(1, homme.getNom());
            pstm.setString(2, homme.getPrenom());
            pstm.setString(3, homme.getAdresse());
            pstm.setString(4, homme.getSexe());
            pstm.setString(5, homme.getNaissence());
            pstm.setString(6, homme.getEmail());
            pstm.setString(7, homme.getDece());
            pstm.setInt(8, homme.getId());
            rowUpdated = pstm.executeUpdate() > 0;

        }
        return rowUpdated;
    }
     public boolean updateCandidant(Candidant candidant) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection();
                PreparedStatement pstmc = connection.prepareStatement("UPDATE `candidant` SET `nomc` = ?, `but` = ?, `datetire` = ?  WHERE `idc` = ?;");) {
            pstmc.setString(1, candidant.getNomc());
            pstmc.setString(2, candidant.getBut());
             pstmc.setString(3, candidant.getDatetire());
              pstmc.setInt(4, candidant.getIdc());
            rowUpdated = pstmc.executeUpdate() > 0;
   
        }
        return rowUpdated;
    }
    
    /**
     *
     * @param ex
     */
    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    } 
}
