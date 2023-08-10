package net.usermanagement.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.contentmanagement.dao.PropertyDAO;
import net.contentmanagement.model.Property;
import net.usermanagement.dao.UserDAO;
import net.usermanagement.model.User;

/**
 * Servlet implementation class UsersServlet
 */
@WebServlet("/UsersServlet")
public class UsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO;

    public UsersServlet() {
        this.userDAO = new UserDAO();
    }
    /**
     * @see HttpServlet#HttpServlet()
     */
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getServletPath();

        try {
            switch (action) {
            
                case "/":
                    signUpPage(request, response);
                    break;
                case "/add":
                	insertUser(request, response);
                default:
                    
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
	}

	private void insertUser(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String firstName = request.getParameter("firstName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");   
        String address = request.getParameter("address");
        String phoneNumber = request.getParameter("phoneNumber");

        User newUser = new User(firstName, email, password, role, address, phoneNumber, null);
        userDAO.signUp(newUser);

        response.sendRedirect("home-page.jsp");
    }
	
	private void signUpPage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("signup.jsp");
        dispatcher.forward(request, response);
    }
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
