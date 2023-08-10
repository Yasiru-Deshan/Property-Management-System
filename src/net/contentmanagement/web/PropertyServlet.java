package net.contentmanagement.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.contentmanagement.dao.PropertyDAO;
import net.contentmanagement.model.Property;

@WebServlet("/PropertyServlet")
public class PropertyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private PropertyDAO propertyDAO;

    public PropertyServlet() {
        this.propertyDAO = new PropertyDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
            
                case "/new":
                    showNewForm(request, response);
                    break;
                case "/insert":
                    insertProperty(request, response);
                    break;
                case "/delete":
                    deleteProperty(request, response);
                    break;
                case "/edit":
                    showEditForm(request, response);
                    break;
                case "/update":
                    updateProperty(request, response);
                    break;
                case "/apartments":
                	listPropertiesByCategory(request, response, "Apartment");
                	break;
                case "/buildings":
                	listPropertiesByCategory(request, response, "Building");
                	break;
                case "/lands":
                	listPropertiesByCategory(request, response, "Land");
                	break;
                case "/property-item":
                	getProperty(request, response);
                	break;
                case "/search":
                	propertySearchServlet(request, response);
                	break;
                default:
                    listProperties(request, response);
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("property-form.jsp");
        dispatcher.forward(request, response);
    }

    private void insertProperty(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String nic = request.getParameter("nic");   
        String category = request.getParameter("category");
        String image = request.getParameter("image");
        String address = request.getParameter("address");
        String description = request.getParameter("description");

        Property newProperty = new Property(fname, lname, email, mobile, nic, category, image, address, description);
        propertyDAO.insertProperty(newProperty);

        response.sendRedirect("list");
    }

    private void deleteProperty(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        propertyDAO.deleteProperty(id);

        response.sendRedirect("list");
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Property existingProperty = propertyDAO.selectProperty(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("property-update.jsp");
        request.setAttribute("property", existingProperty);
        dispatcher.forward(request, response);
    }

    private void updateProperty(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String nic = request.getParameter("nic");
        String category = request.getParameter("category");
        String image = request.getParameter("image");
        String address = request.getParameter("address");
        String description = request.getParameter("description");

        Property updatedProperty = new Property(id, fname, lname, email, mobile, nic, category, image, address, description);
        propertyDAO.updateProperty(updatedProperty);

        response.sendRedirect("list");
    }

    private void listProperties(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve list of properties from DAO
        List<Property> propertyList = propertyDAO.selectAllProperties();

        // Set property list in request attribute
        request.setAttribute("propertyList", propertyList);

        // Forward to the JSP for displaying the list
        RequestDispatcher dispatcher = request.getRequestDispatcher("property-list-admin.jsp");
        dispatcher.forward(request, response);
    }
    
    private void listPropertiesByCategory(HttpServletRequest request, HttpServletResponse response, String category)
            throws ServletException, IOException {
        // Retrieve list of properties by category from DAO
        List<Property> propertyList = propertyDAO.selectPropertiesByCategory(category);

        // Set property list and category in request attributes
        request.setAttribute("propertyList", propertyList);
        request.setAttribute("category", category);

        // Forward to the JSP for displaying the list
        RequestDispatcher dispatcher = request.getRequestDispatcher("property-list.jsp");
        dispatcher.forward(request, response);
    }

    protected void getProperty(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the property ID from the request parameter
        int id = Integer.parseInt(request.getParameter("id"));

        // Retrieve the property using the DAO
        Property property = propertyDAO.selectProperty(id);

        if (property != null) {
            // Set the property as an attribute in the request scope
            request.setAttribute("property", property);

            // Forward to a JSP page to display the property details
            request.getRequestDispatcher("property-item.jsp").forward(request, response);
        } else {
            // Property not found, redirect to an error page or handle accordingly
            response.sendRedirect("Error.jsp");
        }
    }
    
   
        protected void propertySearchServlet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String searchAddress = request.getParameter("address");
            
            PropertyDAO propertyDAO = new PropertyDAO();
            List<Property> searchResults = propertyDAO.searchPropertiesByAddress(searchAddress);
            
            request.setAttribute("searchResults", searchResults);
            
            request.getRequestDispatcher("/search-results.jsp").forward(request, response);
        
    }


    

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
