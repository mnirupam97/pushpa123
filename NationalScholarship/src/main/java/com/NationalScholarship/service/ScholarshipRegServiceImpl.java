package com.NationalScholarship.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.NationalScholarship.dao.ScholarshipRegDaoIntf;
import com.NationalScholarship.model.Institute;
import com.NationalScholarship.model.ScholarshipRegistrationDocs;
import com.NationalScholarship.model.StudentLoginDetails;
import com.NationalScholarship.model.basicScholarshipRegistration;
import com.NationalScholarship.model.stateNodal;
import com.NationalScholarship.model.student10thDetails;
import com.NationalScholarship.model.student12thDetails;
import com.NationalScholarship.model.studentAcademicsRegistration;


@Service("scholRegServ")
public class ScholarshipRegServiceImpl implements ScholarshipRegServiceIntf {

	
		@Autowired
		  public ScholarshipRegDaoIntf scholRegDao;
			
		@Transactional
		  public boolean register(basicScholarshipRegistration bsr) {
		    return scholRegDao.register(bsr);
		  }

		@Transactional
		public boolean register10(student10thDetails student10thdetails) {
			return scholRegDao.register10(student10thdetails);
		}
		
		@Transactional
		public boolean register12(student12thDetails student12thdetails) {
			return scholRegDao.register12(student12thdetails);
		}

		@Transactional
		public boolean studentRegister(StudentLoginDetails sld) {
			
			return scholRegDao.studentRegister(sld);
		}

		@Transactional
		public boolean instituteRegister(Institute inst) {
			
			return scholRegDao.instituteRegister(inst);
		}
		 
		@Transactional
		public StudentLoginDetails validateUser(StudentLoginDetails sld) {
			
			return scholRegDao.validateUser(sld);
		}
		
		@Transactional
		public boolean uploadDocuments(ScholarshipRegistrationDocs srd) {

			return scholRegDao.uploadDocuments(srd);
		}

		@Transactional
		public Institute validateUserInst(Institute inst) {
			
			return scholRegDao.validateUserInst(inst);
		}

		/*public List<basicScholarshipRegistration> getApplications() {
			
			return scholRegDao.getApplications();
		}*/
		
      /*public List<Object[]> getApplications(String instcode) {
			
			return scholRegDao.getApplications();
		}
*/
      @Transactional
      public List<StudentLoginDetails> getmynewapplicants(String inst_code){
    	  return scholRegDao.getmynewapplicants(inst_code);
      }

      @Transactional
      public boolean scholAcadDetails(studentAcademicsRegistration sar)
      {
    	  return scholRegDao.scholAcadDetails(sar);
      }
      
      @Transactional
      public int updateStatus(String student_username,String status)
      {
    	  return scholRegDao.updateStatus(student_username, status);
      }

	}


