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
@Table(name = "Chat")
public class BeanChat {
	
	
	
	@SuppressWarnings("unused")
	@Id
	  @GeneratedValue(strategy=GenerationType.AUTO)
	  @Column(name="mid")	
	   private int mid;
	
	@Column(name="msg")
	private String msg;
	
	@Column(name="fid")
	private String fid;
	
	@Column(name="email")
	private String email;
	

	
	@SuppressWarnings("unused")
	@Temporal(TemporalType.TIMESTAMP)
	  @Column(name="cdt",insertable=true)	
	  private java.util.Date cdt=new java.sql.Date(new java.util.Date().getTime());

	public String getMsg() {
		return msg;
	}
	

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getFid() {
		return fid;
	}

	public void setFid(String fid) {
		this.fid = fid;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
