package bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "PaymentDetails")
public class BeanPaymentPanel {
	
	public BeanPaymentPanel() {
		
	}
	
	public BeanPaymentPanel(String emailid, String amount, String medium,
			String date, String chknum) {
		super();
		this.emailid = emailid;
		this.amount = amount;
		this.medium = medium;
		this.date = date;
		this.chknum = chknum;
	}

	@Id
	@Column(name="EmailId")
	private String emailid;
	
	@Column(name="amount")
	private String amount;
	
	@Column(name="medium")
	private String medium;
	
	@Column(name="date")
	private String date;
	
	@Column(name="chknum")
	private String chknum;

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getMedium() {
		return medium;
	}

	public void setMedium(String medium) {
		this.medium = medium;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getChknum() {
		return chknum;
	}

	public void setChknum(String chknum) {
		this.chknum = chknum;
	}
	
	
	
	

}
