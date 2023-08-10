package net.contentmanagement.model;

public class Property {

	private int id;
	private String fname;
	private String lname;
	private String email;
	private String mobile;
	private String nic;
	private String category;
	private String image;
	private String address;
	private String description;
	
	public Property(int id, String fname, String lname, String email, String mobile, String nic, String category, String image, String address, String description) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.mobile = mobile;
		this.nic = nic;
		this.category = category;
		this.image = image;
		this.address = address;
		this.description = description;
	}
	
	
	
	public Property(String fname, String lname, String email, String mobile, String nic, String category, String image, String address, String description) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.mobile = mobile;
		this.nic = nic;
		this.category = category;
		this.image = image;
		this.address = address;
		this.description = description;
	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getNic() {
		return nic;
	}
	public void setNic(String nic) {
		this.nic = nic;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
