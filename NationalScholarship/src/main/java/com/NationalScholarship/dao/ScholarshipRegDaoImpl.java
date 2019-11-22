package com.NationalScholarship.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.NationalScholarship.model.Institute;
import com.NationalScholarship.model.ScholarshipRegistrationDocs;
import com.NationalScholarship.model.StudentLoginDetails;
import com.NationalScholarship.model.basicScholarshipRegistration;
import com.NationalScholarship.model.student10thDetails;
import com.NationalScholarship.model.student12thDetails;
import com.NationalScholarship.model.studentAcademicsRegistration;




@Repository("scholRegDao")
public class ScholarshipRegDaoImpl implements ScholarshipRegDaoIntf {
	

	@PersistenceContext
	EntityManager em;

	public boolean register(basicScholarshipRegistration bsr) {
		
		
		    boolean flag=false;
		    try {
		    
			em.persist(bsr);
			//em.getTransaction().commit();
			//em.close();
			System.out.println("end");
			flag=true;
		    }
		    catch(Exception e) { System.out.println("Error:"+e);  }
		    return flag;
		  }

	public boolean register10(student10thDetails student10thdetails) {
		 boolean flag=false;
		    try {
		    
			em.persist(student10thdetails);
			//em.getTransaction().commit();
			//em.close();
			System.out.println("end");
			flag=true;
		    }
		    catch(Exception e) { System.out.println("Error:"+e);  }
		    return flag;
		  }

	public boolean register12(student12thDetails student12thdetails) {
		boolean flag=false;
	    try {
	    
		em.persist(student12thdetails);
		//em.getTransaction().commit();
		//em.close();
		System.out.println("end");
		flag=true;
	    }
	    catch(Exception e) { System.out.println("Error:"+e);  }
	    return flag;
	}
	
	 public boolean studentRegister(StudentLoginDetails sld) {
		    boolean flag=false;
		    try {
		    
			em.persist(sld);
			//em.getTransaction().commit();
			//em.close();
			System.out.println("end");
			flag=true;
		    }
		    catch(Exception e) { System.out.println("Error:"+e);  }
		    return flag;
		  }

	public boolean instituteRegister(Institute inst) {
		 boolean flag=false;
		    try {
		    
			em.persist(inst);
			//em.getTransaction().commit();
			//em.close();
			System.out.println("end");
			flag=true;
		    }
		    catch(Exception e) { System.out.println("Error:"+e);  }
		    return flag;
	}

	public boolean addInstitute(Institute inst) {
		
			boolean result=false;
			try{
			
			em.persist(inst);
			//em.getTransaction().commit();
			result=true;
			
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			
			return result;
			
		}

	public StudentLoginDetails validateUser(StudentLoginDetails sld) {
	
		//User f =null;
		StudentLoginDetails studl=null;
		try{
			studl=(StudentLoginDetails)em.createQuery("SELECT s FROM StudentLoginDetails s WHERE s.student_username=:uname and s.student_password=:pwd")
		         .setParameter("uname", sld.getStudent_username())
		         .setParameter("pwd",sld.getStudent_password())
		         .getSingleResult();
		}
		catch(Exception e) {System.out.println(e); }
		//em.close();
		System.out.println(studl);
		return studl ;

	}

	public boolean uploadDocuments(ScholarshipRegistrationDocs srd) {
		boolean result=false;
		try{
		
		em.persist(srd);
		//em.getTransaction().commit();
		result=true;
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return result;
	}
	
	public boolean scholAcadDetails(studentAcademicsRegistration sar) {
		boolean result=false;
		try{
		
		em.persist(sar);
		//em.getTransaction().commit();
		result=true;
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return result;
	}

	public Institute validateUserInst(Institute inst) {
		//User f =null;
				Institute institute=null;
				try{
					institute=(Institute)em.createQuery("SELECT i FROM Institute i WHERE i.inst_username=:uname and i.inst_password=:pwd")
				         .setParameter("uname", inst.getInst_username())
				         .setParameter("pwd",inst.getInst_password())
				         .getSingleResult();
				}
				catch(Exception e) {System.out.println(e); }
				//em.close();
				System.out.println(institute);
				return institute ;
	}
	
	
	//public List<basicScholarshipRegistration> getApplications()
	public List<Object[]> getApplications()
	{
		@SuppressWarnings("unchecked")
		String sql="select * from basic_scholarship_registration b where  b.student_username=any(select s.student_username from student_login_details s ,Institute i where s.inst_code=i.inst_code)";
		//List<basicScholarshipRegistration> users = em.createNativeQuery(sql).getResultList();
		List<Object[]> users = em.createNativeQuery(sql).getResultList();
		return users;
		
		
	}

	public List<Object[]> getUserNameAppl() {

		@SuppressWarnings("unchecked")
		String sql="select s.student_username from basic_scholarship_registration b where  b.student_username=any(select s.student_username from student_login_details s ,Institute i where s.inst_code=i.inst_code)";
		//List<basicScholarshipRegistration> users = em.createNativeQuery(sql).getResultList();
		List<Object[]> users = em.createNativeQuery(sql).getResultList();
		return users;
	}
	
	
	 public List<StudentLoginDetails> getmynewapplicants(String inst_code){
		// System.out.println(inst_code);
		 String sql = "select s from StudentLoginDetails s where s.institute.inst_code=:inst_code "
		 		+ "and s.student_username in ("
		 		+ "select b.studentLoginDetails.student_username from basicScholarshipRegistration b)";
		 
		// String sql = "select b from basicSc where user"
		 
		 Query query = em.createQuery(sql);
		 query.setParameter("inst_code", inst_code);
		 System.out.println(inst_code);
		 @SuppressWarnings("unchecked")
		List<StudentLoginDetails> slist = query.getResultList();
		 System.out.println(slist);
		 return slist;
	 }

	public boolean AcceptScholarshipInst() {
		// TODO Auto-generated method stub
		return false;
	}

	public int updateStatus(String student_username,String status) {
		String sql = "update StudentLoginDetails s set s.status=:status where s.student_username=:username";
	//	que
		
		Query query=em.createQuery(sql);
		query.setParameter("status", status);
		query.setParameter("username", student_username);
		
		int result=query.executeUpdate();
		
		return result;
	}

/*	public boolean AcceptScholarshipInst() {
 * 
 * }*/
		
		
		
	}
	 
	 
	
	
	
		
	

