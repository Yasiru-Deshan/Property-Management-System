package net.usermanagement.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
                case "/login-page":
                	loginPage(request, response);
                case "/alogin-page":
                	adminLoginPage(request, response);
                case "/login":
                	login(request, response);
                case "/login-admin":
                	adminLogin(request, response);
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
	
	private void loginPage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
        dispatcher.forward(request, response);
    }
	
	private void adminLoginPage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("login-admin.jsp");
        dispatcher.forward(request, response);
    }
	
	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Call the DAO to get the user based on email and password
        User user = userDAO.getUserByEmailAndPassword(email, password);

        if (user != null) {
            // Successful login
            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            // Redirect to the user's dashboard or homepage
            response.sendRedirect("home-page.jsp"); // Change this to the appropriate URL
        } else {
            // Invalid login
            request.setAttribute("error", "Invalid email or password");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
	
	protected void adminLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Call the DAO to get the user based on email and password
        User user = userDAO.getUserByEmailAndPassword(email, password);

        if (user != null) {
            // Successful login
            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            // Redirect to the user's dashboard or homepage
            response.sendRedirect("/real-estate-management-system/list"); // Change this to the appropriate URL
        } else {
            // Invalid login
            request.setAttribute("error", "Invalid email or password");
            request.getRequestDispatcher("/login-admin.jsp").forward(request, response);
        }
    }
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
