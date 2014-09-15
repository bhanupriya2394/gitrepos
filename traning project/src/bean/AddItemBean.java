package bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "Item")
public class AddItemBean {
	
	public AddItemBean(String item, String itemtype, String price) {
		super();
		Item = item;
		Itemtype = itemtype;
		Price = price;
	}
	

	public AddItemBean() {
	}
	
	@SuppressWarnings("unused")
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="pid")	
	private int pid;
	@Column(name="Item")
	private String Item;
	@Column(name="Itemtype")
	private String Itemtype;
	@Column(name="Price")
	private String Price;
	public String getItem() {
		return Item;
	}
	public void setItem(String item) {
		Item = item;
	}
	public String getItemtype() {
		return Itemtype;
	}
	public void setItemtype(String itemtype) {
		Itemtype = itemtype;
	}
	public String getPrice() {
		return Price;
	}
	public void setPrice(String price) {
		Price = price;
	}
	
	
	
}
