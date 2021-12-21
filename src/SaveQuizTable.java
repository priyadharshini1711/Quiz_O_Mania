
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author PRIYADHARSHINI
 */
public class SaveQuizTable {
    public static void saveQuizTable(int uid, String category, String quiz_title, int points){
        try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/game?characterEncoding=utf8", "root", "");
                PreparedStatement preparedStatement = connection.prepareStatement("insert into history (uid, category, quiz_title, points, created_at) values (?,?,?,?,CURRENT_TIMESTAMP)");
                preparedStatement.setInt(1, uid);
                preparedStatement.setString(2, category);
                preparedStatement.setString(3, quiz_title);
                preparedStatement.setInt(4, points);
                preparedStatement.executeUpdate();
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(UserLogin.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(UserLogin.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
    
}
