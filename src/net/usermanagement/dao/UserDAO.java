package net.usermanagement.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import net.contentmanagement.model.Property;
import net.usermanagement.model.User;

public class UserDAO {

    String jdbcUrl = "jdbc:mysql://localhost:3306/rems?useSSL=false";
    String username = "root";
    String password = "password";

    private static final String SIGNUP = "INSERT INTO usersTable" +
            "  (firstName, email, password, role, address, phoneNumber ) VALUES "
            + " (?, ?, ?, ?, ?, ?);";
    private static final String LOGIN = "SELECT * FROM usersTable WHERE email = ? AND password = ?";
    
    public UserDAO() {
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
    public void signUp(User user) {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SIGNUP)) {
            preparedStatement.setString(1, user.getFirstName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.setString(4, user.getRole());
            preparedStatement.setString(5, user.getAddress());
            preparedStatement.setString(6, user.getPhoneNumber());

            

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public User getUserByEmailAndPassword(String email, String password) {
        String query = LOGIN;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                
                int id = resultSet.getInt("id");
                String firstName = resultSet.getString("firstName");
                
                String role = resultSet.getString("role");
                String address = resultSet.getString("address");
                String phoneNumber = resultSet.getString("phoneNumber");

                // Construct and return a User object
                return new User(id, firstName, email, password, "user", address, phoneNumber, null);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null; // User not found
    }
     
    
}

