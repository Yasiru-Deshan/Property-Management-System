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

    private static final String SELECT_PROPERTY_BY_ID = "SELECT fname, lname, email, mobile, nic, category, image, address, description FROM properties WHERE id =?";
    private static final String SELECT_ALL_PROPERTIES = "SELECT * FROM properties";
    private static final String SELECT_APARTMENTS = "SELECT * FROM properties WHERE category = 'Apartment'";
    private static final String SELECT_BUILDINGS = "SELECT * FROM properties WHERE category = 'Building'";
    private static final String SELECT_LANDS = "SELECT * FROM properties WHERE category = 'Land'";
    private static final String DELETE_PROPERTIES_SQL = "DELETE FROM properties WHERE id = ?;";
    private static final String SEARCH_PROPERTY = "SELECT * FROM properties WHERE address LIKE ?";
    private static final String UPDATE_PROPERTIES_SQL = "UPDATE properties SET fname = ?, lname = ?, email = ?, mobile = ?, nic = ?, category = ?, image = ?, address = ?, description = ? WHERE id = ?;";

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
     
    
}

