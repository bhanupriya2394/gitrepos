package bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "feedback")

public class BeanFeedback {

	
	

	public BeanFeedback(String name, String msg, String feed) {
		super();
		this.name = name;
		this.msg = msg;
		this.feed = feed;
	}

	public BeanFeedback() {
	// TODO Auto-generated constructor stub
	}
	@SuppressWarnings("unused")
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="fid")	
	private int fid;
	
	@Column(name="name")
	private String name;
	
	@Column(name="msg")
	private String msg;

	@Column(name="feed")
	private String feed;
	
	public String getFeed() {
		return feed;
	}

	public void setFeed(String feed) {
		this.feed = feed;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	
	
	
}
