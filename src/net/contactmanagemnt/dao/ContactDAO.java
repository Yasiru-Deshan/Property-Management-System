package net.contactmanagemnt.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.contactmanagement.model.Contact;
import net.usermanagement.model.User;

public class ContactDAO {

	String jdbcUrl = "jdbc:mysql://localhost:3306/rems?useSSL=false";
    String username = "root";
    String password = "password";

    private static final String SEND_MESSAGE = "INSERT INTO contacts" +
            "  (name, email, subject, message ) VALUES "
            + " (?, ?, ?, ?);";

    public ContactDAO() {
    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcUrl, username, password);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

 // Insert a user
    public void sendMessage(Contact contact) {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SEND_MESSAGE)) {
            preparedStatement.setString(1, contact.getName());
            preparedStatement.setString(2, contact.getEmail());
            preparedStatement.setString(3, contact.getSubject());
            preparedStatement.setString(4, contact.getMessage());
            

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
     
	
}
