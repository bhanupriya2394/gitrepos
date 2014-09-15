package datalayer;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;


import bean.AddItemBean;
import bean.ApplicantDetailsBeans;
import bean.BeanChat;
import bean.BeanFeedback;
import bean.BeanFranchiseTable;
import bean.BeanOrderSales;
import bean.BeanPaymentPanel;
import bean.SignUpBean;
public class OperationDb {
	
	
	AnnotationConfiguration cfg;
    SessionFactory factory ;
    Session session;
    Transaction tx;
    Query query;
    public OperationDb() 
		{
		cfg=new AnnotationConfiguration();
		cfg.configure("hibernate.cfg.xml");
		factory= cfg.buildSessionFactory();
		session = factory.openSession();
		tx = session.beginTransaction();
		}
    //////////////////////////////////////save sign up details//////////////////////////////////////////////
    public void saveRecord(SignUpBean bean )
	{
		
	        session.save(bean);
	        System.out.println("Object saved successfully using annotations.....!!");
	        tx.commit();
	        
	}
    
    ////////////////////////////fetch record for pasword recovery////////////////////////////////////////////////////////
    
    public SignUpBean fetchPassword(String email) {
    	
    	String queryString="from SignUpBean where email= :email";
    	query = session.createQuery(queryString);
    	query.setString("email", email);
    	Object queryResult=query.uniqueResult();
    	SignUpBean bean=(SignUpBean) queryResult;
    	session.getTransaction().commit();
		
    	return bean;
	}
    /////////////////////////////save applicant Details///////////////////////////////////////////////////////

    public void saveApplicantDetails(ApplicantDetailsBeans beans) {
    	session.save(beans);
        System.out.println("Object saved successfully using annotations.....!!");
        tx.commit();
        session.close();
		
    	
	}
  ////////////////////////////fetch applicant records on franchise page/////////////////////  
  
	@SuppressWarnings("unchecked")
	public List<ApplicantDetailsBeans> fetchAllRecords() {
    	//session=factory.openSession();
    	String querststring="from ApplicantDetailsBeans where status= :s or status= :s1" ;
    	
    	query=session.createQuery(querststring);
    	query.setInteger("s", -1);
    	query.setInteger("s1", 2);
    	List<ApplicantDetailsBeans> allrecords;
    	allrecords=query.list();
    	return allrecords;
    	
    }
	
//////////////////////////////Fetch one for F_ShowEachApplicantDetails	
    @SuppressWarnings("unchecked")
	public List<ApplicantDetailsBeans> fetchEachApplicantDetails(String rid) {
		List<ApplicantDetailsBeans> bean;
		String queryString="from ApplicantDetailsBeans where email= :rid";
		query = session.createQuery(queryString);
    	query.setString("rid", rid);
    	Object queryResult=query.list();
		bean= (List<ApplicantDetailsBeans>) queryResult;
		
		return bean;
    	
	}
  
 ////////////////////////////////franchiser updateStatus/////////////////////////////   
    
    public int updateStatus(int rid,int status) {
    	
    	
    	String hql = "update ApplicantDetailsBeans set status = :status where rid=:rid";
    	query = session.createQuery(hql);
        query.setInteger("rid", rid);	 
    	query.setInteger("status",status);
    	int rowCount = query.executeUpdate();
    	
        System.out.println("Rows affected: " + rowCount);
        tx.commit();
        return rowCount;
	}
    
    ///////////////////////////////////////save payment panel records/////////////////////
    
    public void savePaymentPanel(BeanPaymentPanel bean) {
		
    	session.save(bean);
        System.out.println("Object saved successfully using annotations.....!!");
        tx.commit();
        session.close();
    	
	}
    
///////////////////////////fetch all payment records for frenchise//////////////////////////////
    @SuppressWarnings("unchecked")
	public List<BeanPaymentPanel> fetch() {
		List<BeanPaymentPanel> records;
		String querststring="from BeanPaymentPanel";
		query=session.createQuery(querststring);
		records=query.list();
		return records;
	}
    
/////////////////////////Fetch One from signup for final franchise///////////////////////////////////////////
    
    public SignUpBean fetchDetail(String email) {

    	String queryString="from SignUpBean where email= :email";
    	query = session.createQuery(queryString);
    	query.setString("email", email);
    	Object queryResult=query.uniqueResult();
    	SignUpBean bean=(SignUpBean) queryResult;
    	session.getTransaction().commit();
		return bean;
    }
   
  //////////////////////////////////save into franchise table/////////////////////////////////
    
    public  void dosave(BeanFranchiseTable bean)
	{
		Transaction tx = session.beginTransaction();
       session.save(bean);
        System.out.println("Object saved successfully using annotations.....!!");
        tx.commit();
	}
    
    
    
////////////////////////////// save customer order in franchiseordersale table////////////////////// 
    
    public void saveOrder(BeanOrderSales bean) {
    	Transaction tx = session.beginTransaction();
        session.save(bean);
        System.out.println("Object saved successfully using annotations.....!!");
        tx.commit();
		
	}
    
//////////////////////////fetch existing customer detail/////////////////////////
    @SuppressWarnings("unchecked")
	public List<BeanOrderSales> fetchCustomer(String phone)
    {
    	String queryString="from BeanOrderSales where phone=:phone";
    	query=session.createQuery(queryString);
    	query.setString("phone", phone);
    	Object queryresult=query.list();
    	List<BeanOrderSales> pro=(List<BeanOrderSales>)queryresult;
    	session.getTransaction().commit();
    	return pro;
    }
    
    
/////////////////////////fetch sales records/////////////////////////////////////
    public List<BeanOrderSales> fetchSalesRecords(String sd,String ed,String email)
    {  
    	   String hql="from BeanOrderSales where cdt between :sd and :ed and Femail= :email ";
    	   Query query=session.createQuery(hql);
    	   query.setString("sd",sd);
    	   query.setString("ed",ed);
    	   query.setString("email",email);
    	   @SuppressWarnings("unchecked")
		List<BeanOrderSales> list=query.list();
    	   return list;
    	
    }
    
 ////////////////////////////////////////////////////////////////////////////////////
    
    @SuppressWarnings("unchecked")
	public List<String> fetchALLFranchisee() {
    	List<String> all;
    	String hql="select email from BeanFranchiseTable";
    	Query query=session.createQuery(hql);
    	all=query.list();
    	return all;
	}
    
//////////////////////////////////save chat////////////////////////////////////////////////////
    
    public void saveData(BeanChat bean) {

    	Transaction tx = session.beginTransaction();
        session.save(bean);
        System.out.println("Object saved successfully using annotations.....!!");
        tx.commit();
    	
	}
    
///////////////////////////////////// fetch chat msg///////////////////////////////////////////////////////
    @SuppressWarnings("unchecked")
	public List<BeanChat> fetchMessages(String id) {
    	
		
		String hql="from BeanChat where email= :id";
		Query query=session.createQuery(hql);
 	   	query.setString("id",id);
 	   	List<BeanChat> bean=query.list();
    	return bean;
    }
    
////////////////////////////////////////////////////////////////////////////////////////////////////
    
    public void saveItem(AddItemBean bean) {
    	Transaction tx = session.beginTransaction();
        System.out.println("-----"+session.save(bean));
        session.save(bean);
        System.out.println("Object saved successfully using annotations.....!!");
        tx.commit();
		
	}
    
    ///////////////////////////////////////////////////////////////////////////
    
    @SuppressWarnings("unchecked")
	public List<String> fetchALLItems() {
    	List<String> all;
    	String hql="select distinct Item from AddItemBean";
    	Query query=session.createQuery(hql);
    	all=query.list();
    	return all;
	}
    
///////////////////////////////////////////////////////////////////////////////
    
    
	@SuppressWarnings("unchecked")
	public List<AddItemBean> fetchListItemtype(String item) {
    	List<AddItemBean> all;
    	String hql="from AddItemBean where item= :item";
    	Query query=session.createQuery(hql);
    	query.setString("item", item);
    	all=(List<AddItemBean>) query.list();
    	return all;
    	
		
	}
	
/////////////////////////////check status applicant//////////////////////////
	
	public int  checkStatus(String email) {
		int res;
		String hql="select status from ApplicantDetailsBeans where email= :email";
		Query query=session.createQuery(hql);
    	query.setString("email", email);
    	Object queryresult=query.uniqueResult();
    	res= (Integer) queryresult;
    	return res;
	}
	
	
///////////////////////////fill city..order form////////////////////////////
	
	@SuppressWarnings("unchecked")
	public List<ApplicantDetailsBeans> fillCity() {
		
		List<ApplicantDetailsBeans> cities;
		String hql="from ApplicantDetailsBeans ab,BeanFranchiseTable ft where ft.email=ab.email";
		Query query=session.createQuery(hql);
		cities=query.list();
		return cities;
	}
	
//////////////////////////////////login//////////////////////////////////////
	public ApplicantDetailsBeans checkApplicant(String email) {
		ApplicantDetailsBeans record;
		String hql="from ApplicantDetailsBeans where email= :email";
		Query query=session.createQuery(hql);
		query.setString("email", email);
		Object queryresult=query.uniqueResult();
		record=(ApplicantDetailsBeans) queryresult;
		return record;
	}
	
	public SignUpBean checkApplicant1(String email) {
		SignUpBean record;
		String hql="from SignUpBean where email= :email";
		Query query=session.createQuery(hql);
		query.setString("email", email);
		Object queryresult=query.uniqueResult();
		record=(SignUpBean) queryresult;
		return record;
		
	}
	public BeanFranchiseTable checkFranchise(String email) {
		BeanFranchiseTable record;
		String hql="from BeanFranchiseTable where email= :email";
		Query query=session.createQuery(hql);
		query.setString("email", email);
		Object queryresult=query.uniqueResult();
		record=(BeanFranchiseTable) queryresult;
		return record;
	}
	
////////////////////////////////////////login end/////////////////////////////////////////
	
	
/////////////////////////////////fetch all Franchise////////////////////////////////////
	@SuppressWarnings("unchecked")
	public List<ApplicantDetailsBeans> fetchAllFranchise() {
		List<ApplicantDetailsBeans> record;
		String hql="from ApplicantDetailsBeans ab,BeanFranchiseTable ft where ft.email=ab.email";
		Query query=session.createQuery(hql);
		record=query.list();
		return record;
		
	}
	
///////////////////////////////fetch applicant already registered/////////////////////////////////////////////
	public ApplicantDetailsBeans fetchApplicant(String email) {
		ApplicantDetailsBeans record;
		String hql="from ApplicantDetailsBeans where email= :email";
		Query query=session.createQuery(hql);
		query.setString("email", email);
		record=(ApplicantDetailsBeans) query.uniqueResult();
		return record;
		
	}
	public BeanPaymentPanel fetchpayment(String email) {
		BeanPaymentPanel record;
		String hql="from BeanPaymentPanel where emailid= :email";
		Query query=session.createQuery(hql);
		query.setString("email", email);
		record=(BeanPaymentPanel) query.uniqueResult();
		return record;
		
	}
	
	
///////////////////////////////feedback save////////////////////////////////////////////////
	public void saveFeed(BeanFeedback bean) {
		
		Transaction tx = session.beginTransaction();
        session.save(bean);
        System.out.println("Object saved successfully using annotations.....!!");
        tx.commit();
	}
	
	@SuppressWarnings("unchecked")
	public List<BeanFeedback> fetchReview() {
		List<BeanFeedback> record;
		String hql="from BeanFeedback";
		Query query=session.createQuery(hql);
 	   	record=query.list();
    	return record;
		
		
	}
	
//////////////////////////////fill franchise acc to city on order form///////////////////////	
	
	public String fetchCity(String ocity) {
		System.out.println(ocity);
		String franchise;
		String hql="select email from ApplicantDetailsBeans where ocity= :ocity";
		Query query=session.createQuery(hql);
		query.setString("ocity", ocity);
		franchise= (String) query.uniqueResult();
		return franchise;
	}
///////////////////////////////update details////////////////////////////////////////
	public int update(String email,String fname,String lname,String address,String oaddress,String city,String ocity,String state,String ostate,String zip,String ozip,String country,String ocountry,String phone,String sitedetails,String occupation) {
	
	String hql="update ApplicantDetailsBeans set fname= :fname,lname= :lname,address= :address,oaddress= :oaddress,city= :city,ocity= :ocity,state= :state,ostate= :ostate,zip= :zip,ozip= :ozip,country= :country,ocountry= :ocountry,phone= :phone,sitedetails= :sitedetails,occupation= :occupation where email= :email ";
	query=session.createQuery(hql);
	query.setString("email", email);
	query.setString("fname", fname);
	query.setString("lname", lname);
	query.setString("address", address);
	query.setString("oaddress", oaddress);
	query.setString("city", city);
	query.setString("ocity", ocity);
	query.setString("state", state);
	query.setString("ostate", ostate);
	query.setString("zip", zip);
	query.setString("ozip", ozip);
	query.setString("country", country);
	query.setString("ocountry", ocountry);
	query.setString("phone", phone);
	query.setString("sitedetails", sitedetails);
	query.setString("occupation", occupation);
	int i=query.executeUpdate();
	System.out.println("updated"+i);
	session.getTransaction().commit();
	return i;
	}
	
	
//////////////////////////////////////fetch franchise for authentication/////////////////////////////////////////////////////////////////
	
    public BeanFranchiseTable fetchfrachise(String email) {
    	System.out.println(email);
    	BeanFranchiseTable record;
		String hql="from BeanFranchiseTable where email= :email";
		Query query=session.createQuery(hql);
		query.setString("email", email);
		record=(BeanFranchiseTable) query.uniqueResult();
		return record;
		
	}
    
///////////////////////////////////////////check city/////////////////////////////////////////////////////    
    public ApplicantDetailsBeans checkCity(String city) {
    	ApplicantDetailsBeans record;
		String hql="from ApplicantDetailsBeans where ocity= :city";
		Query query=session.createQuery(hql);
		query.setString("city", city);
		record=(ApplicantDetailsBeans) query.uniqueResult();
		return record;
		
	}
    
//////////////////////////////check email duplicate///////////////////
    public SignUpBean checkEmail(String email) {
    	System.out.println(email);
    	SignUpBean record;
		String hql="from SignUpBean where email= :email";
		Query query=session.createQuery(hql);
		query.setString("email", email);
		record=(SignUpBean) query.uniqueResult();
		return record;
		
	}
    
}
