package net.usermanagement.model;
import java.util.List;

import net.contentmanagement.model.Property;

public class User {

	 private int id;
	    private String firstName;
	   
	    private String email;
	    private String password;
	    private String role;
	    private String address;
	    private String phoneNumber;
	    private List<Property> properties;
	    
	    public User() {
	    }

	    public User( String firstName, String email, String password, String role,
                String address, String phoneNumber, List<Property> properties) {
        
        this.firstName = firstName;
      
        this.email = email;
        this.password = password;
        this.role = role;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.properties = properties;
    }
	    
	    public User(int id, String firstName, String email, String password, String role,
	                String address, String phoneNumber, List<Property> properties) {
	        this.id = id;
	        this.firstName = firstName;
	      
	        this.email = email;
	        this.password = password;
	        this.role = role;
	        this.address = address;
	        this.phoneNumber = phoneNumber;
	        this.properties = properties;
	    }
	    
	    
	    
	    public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getFirstName() {
			return firstName;
		}

		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}

		

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getRole() {
			return role;
		}

		public void setRole(String role) {
			this.role = role;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		public String getPhoneNumber() {
			return phoneNumber;
		}

		public void setPhoneNumber(String phoneNumber) {
			this.phoneNumber = phoneNumber;
		}

		public List<Property> getProperties() {
			return properties;
		}

		public void setProperties(List<Property> properties) {
			this.properties = properties;
		}

		
	    
}
