package net.contentmanagement.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import net.contentmanagement.model.Property;

public class PropertyDAO {

    String jdbcUrl = "jdbc:mysql://localhost:3306/rems?useSSL=false";
    String username = "root";
    String password = "password";

    private static final String INSERT_PROPERTIES_SQL = "INSERT INTO properties" +
            "  (fname, lname, email, mobile, nic, category, image, address, description ) VALUES "
            + " (?, ?, ?, ?, ?, ?, ?, ?, ?);";

    private static final String SELECT_PROPERTY_BY_ID = "SELECT fname, lname, email, mobile, nic, category, image, address, description FROM properties WHERE id =?";
    private static final String SELECT_ALL_PROPERTIES = "SELECT * FROM properties";
    private static final String SELECT_APARTMENTS = "SELECT * FROM properties WHERE category = 'Apartment'";
    private static final String SELECT_BUILDINGS = "SELECT * FROM properties WHERE category = 'Building'";
    private static final String SELECT_LANDS = "SELECT * FROM properties WHERE category = 'Land'";
    private static final String DELETE_PROPERTIES_SQL = "DELETE FROM properties WHERE id = ?;";
    private static final String SEARCH_PROPERTY = "SELECT * FROM properties WHERE address LIKE ?";
    private static final String SELECT_USERS = "SELECT fname, lname, email, mobile, nic, address FROM properties"; 
    private static final String UPDATE_PROPERTIES_SQL = "UPDATE properties SET fname = ?, lname = ?, email = ?, mobile = ?, nic = ?, category = ?, image = ?, address = ?, description = ? WHERE id = ?;";

    public PropertyDAO() {
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

    // Insert a property
    public void insertProperty(Property property) {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PROPERTIES_SQL)) {
            preparedStatement.setString(1, property.getFname());
            preparedStatement.setString(2, property.getLname());
            preparedStatement.setString(3, property.getEmail());
            preparedStatement.setString(4, property.getMobile());
            preparedStatement.setString(5, property.getNic());
            preparedStatement.setString(6, property.getCategory());
            preparedStatement.setString(7, property.getImage());
            preparedStatement.setString(8, property.getAddress());
            preparedStatement.setString(9, property.getDescription()); 

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Update a property
    public boolean updateProperty(Property property) {
        boolean rowUpdated = false;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_PROPERTIES_SQL)) {
            preparedStatement.setString(1, property.getFname());
            preparedStatement.setString(2, property.getLname());
            preparedStatement.setString(3, property.getEmail());
            preparedStatement.setString(4, property.getMobile());
            preparedStatement.setString(5, property.getNic());
            preparedStatement.setString(6, property.getCategory());
            preparedStatement.setString(7, property.getImage());
            preparedStatement.setString(8, property.getAddress());
            preparedStatement.setString(9, property.getDescription());    
            preparedStatement.setInt(10, property.getId());

            rowUpdated = preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowUpdated;
    }

    // Get a property by ID
    public Property selectProperty(int id) {
        Property property = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PROPERTY_BY_ID)) {
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                String fname = resultSet.getString("fname");
                String lname = resultSet.getString("lname");
                String email = resultSet.getString("email");
                String mobile = resultSet.getString("mobile");
                String nic = resultSet.getString("nic");
                String category = resultSet.getString("category");
                String image = resultSet.getString("image");
                String address = resultSet.getString("address");
                String description = resultSet.getString("description");

                property = new Property(id, fname, lname, email, mobile, nic, category, image, address, description);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return property;
    }
    
    
 // Get properties by category
    public List<Property> selectPropertiesByCategory(String category) {
        String query = "SELECT * FROM properties WHERE category = ?";
        List<Property> properties = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, category);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String fname = resultSet.getString("fname");
                String lname = resultSet.getString("lname");
                String email = resultSet.getString("email");
                String mobile = resultSet.getString("mobile");
                String nic = resultSet.getString("nic");
                String image = resultSet.getString("image");
                String address = resultSet.getString("address");
                String description = resultSet.getString("description");

                properties.add(new Property(id, fname, lname, email, mobile, nic, category, image, address, description));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return properties;
    }
    
    
    
    
    

    // Get all properties
    public List<Property> selectAllProperties() {
        List<Property> properties = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PROPERTIES)) {
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String fname = resultSet.getString("fname");
                String lname = resultSet.getString("lname");
                String email = resultSet.getString("email");
                String mobile = resultSet.getString("mobile");
                String nic = resultSet.getString("nic");
                String category = resultSet.getString("category");
                String image = resultSet.getString("image");
                String address = resultSet.getString("address");
                String description = resultSet.getString("description");

                properties.add(new Property(id, fname, lname, email, mobile, nic, category, image, address, description));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return properties;
    }

    // Delete a property
    public boolean deleteProperty(int id) {
        boolean rowDeleted = false;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_PROPERTIES_SQL)) {
            preparedStatement.setInt(1, id);

            rowDeleted = preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowDeleted;
    }
    
 //search properties by address
    public List<Property> searchPropertiesByAddress(String searchAddress) {
        String query = SEARCH_PROPERTY;
        List<Property> properties = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, "%" + searchAddress + "%");
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String fname = resultSet.getString("fname");
                String lname = resultSet.getString("lname");
                String email = resultSet.getString("email");
                String mobile = resultSet.getString("mobile");
                String nic = resultSet.getString("nic");
                String category = resultSet.getString("category");
                String image = resultSet.getString("image");
                String address = resultSet.getString("address");
                String description = resultSet.getString("description");

                properties.add(new Property(id, fname, lname, email, mobile, nic, category, image, address, description));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return properties;
    }

    
    
    
    
}
