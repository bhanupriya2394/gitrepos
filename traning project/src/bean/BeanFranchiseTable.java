package bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Franchise_table")
public class BeanFranchiseTable {
	
	
	
	public BeanFranchiseTable(String email, String password, String phone,
			String status) {
		super();
		this.email = email;
		this.password = password;
		this.phone = phone;
		this.status = status;
	}
	BeanFranchiseTable(){
		
		
	}

	@Id
	@Column(name="email")
	private String email;

	
	@Column(name="password")
	private String password;
	
	@Column(name="phone")
	private String phone;
	
	@Column(name="status")
	private String status;

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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	

}
