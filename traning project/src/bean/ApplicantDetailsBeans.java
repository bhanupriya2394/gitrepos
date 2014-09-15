package bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "details")
public class ApplicantDetailsBeans {
	public ApplicantDetailsBeans() {
			}
	
	public ApplicantDetailsBeans(String email, String fname, String lname,
			String address, String city, String state, String zip,
			String country, String phone, String proof, String occupation,
			String oaddress, String ocity, String ostate, String ozip,
			String ocountry, String sitedetails, String pic,int status) {
		super();
		this.email = email;
		this.fname = fname;
		this.lname = lname;
		this.address = address;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.country = country;
		this.phone = phone;
		this.proof = proof;
		this.occupation = occupation;
		this.oaddress = oaddress;
		this.ocity = ocity;
		this.ostate = ostate;
		this.ozip = ozip;
		this.ocountry = ocountry;
		this.sitedetails = sitedetails;
		this.pic = pic;
		this.status=status;
	}
	
	@SuppressWarnings("unused")
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="rid")	
	private int rid;
	
	@Column(name="email")
	private String email;
	
	@Column(name="fname")
	private String fname;
	
	@Column(name="lname")
	private String lname;
	
	@Column(name="address")
	private String address;
	
	@Column(name="city")
	private String city;
	
	@Column(name="state")
	private String state;
	
	@Column(name="zip")
	private String zip;
	
	@Column(name="country")
	private String country;
	
	@Column(name="phone")
	private String phone;
	
	@Column(name="proof" )
	//@Size(min=0,max=10)
	private String proof;
	
	@Column(name="occupation")
	private String occupation;
	
	@Column(name="oaddress")
	private String oaddress;
	
	@Column(name="ocity")
	private String ocity;
	
	@Column(name="ostate")
	private String ostate;
	
	@Column(name="ozip")
	
	private String ozip;
	
	@Column(name="ocountry")
	private String ocountry;
	
	@Column(name="sitedetails")
	private String sitedetails;
	
	@Column(name="pic")
	private String pic;
	
	@Column(name="status")
	private int status;
	

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getProof() {
		return proof;
	}

	public void setProof(String proof) {
		this.proof = proof;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getOaddress() {
		return oaddress;
	}

	public void setOaddress(String oaddress) {
		this.oaddress = oaddress;
	}

	public String getOcity() {
		return ocity;
	}

	public void setOcity(String ocity) {
		this.ocity = ocity;
	}

	public String getOstate() {
		return ostate;
	}

	public void setOstate(String ostate) {
		this.ostate = ostate;
	}

	public String getOzip() {
		return ozip;
	}

	public void setOzip(String ozip) {
		this.ozip = ozip;
	}

	public String getOcountry() {
		return ocountry;
	}

	public void setOcountry(String ocountry) {
		this.ocountry = ocountry;
	}

	public String getSitedetails() {
		return sitedetails;
	}

	public void setSitedetails(String sitedetails) {
		this.sitedetails = sitedetails;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}
	

	
	
	

}
