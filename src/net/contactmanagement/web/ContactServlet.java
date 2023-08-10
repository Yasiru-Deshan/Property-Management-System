package net.contactmanagement.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.contactmanagement.model.Contact;
import net.contactmanagemnt.dao.ContactDAO;
import net.usermanagement.dao.UserDAO;
import net.usermanagement.model.User;

/**
 * Servlet implementation class ContactServlet
 */
@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ContactDAO contactDAO;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	public ContactServlet() {
        this.contactDAO = new ContactDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getServletPath();

        try {
            switch (action) {
            
                case "/send":
                    contactMessage(request, response);
                    break;
               
                default:
                    
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
	}

	private void contactMessage(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");   


        Contact newContact = new Contact(name, email, subject, message);
        contactDAO.sendMessage(newContact);

        response.sendRedirect("home-page.jsp");
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
