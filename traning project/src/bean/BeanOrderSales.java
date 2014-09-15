package bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="franchiseordersale")

public class BeanOrderSales {
	
	@SuppressWarnings("unused")
	@Id
	  @GeneratedValue(strategy=GenerationType.AUTO)
	  @Column(name="rid")	
	   private int rid; 
	
	 @Column(name="Femail")	
	  private String Femail;
	 
	 @Column(name="phone")	
	  private String phone;
	 
	 @Column(name="fname")	
	  private String fname;
	 
	 @Column(name="lname")	
	  private String lname;
	 
	 @Column(name="address")	
	  private String address;
	 
	 @Column(name="type")	
	  private String type;
	 
	 
	 public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Column(name="fullorder")	
	  private String fullorder;
	 
	 @Column(name="bill")	
	  private float bill;
	 
	 @SuppressWarnings("unused")
	@Temporal(TemporalType.TIMESTAMP)
	  @Column(name="cdt",insertable=true)	
	  private java.util.Date cdt=new java.sql.Date(new java.util.Date().getTime());

	public String getFemail() {
		return Femail;
	}

	public void setFemail(String femail) {
		Femail = femail;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getFullorder() {
		return fullorder;
	}

	public void setFullorder(String fullorder) {
		this.fullorder = fullorder;
	}

	public float getBill() {
		return bill;
	}

	public void setBill(float bill) {
		this.bill = bill;
	}
	 
}
