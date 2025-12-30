package com.VHealthAssure.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.VHealthAssure.Dao.ClaimsDao;
import com.VHealthAssure.Entity.ClaimsEntity;

/**
 * Servlet implementation class ClaimSubmitServlet
 */
@WebServlet("/ClaimServlet")
public class ClaimServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClaimServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String patientName=request.getParameter("patientName");
		String age=request.getParameter("age");
		String dateofBirth=request.getParameter("dateofBirth");
		String gender=request.getParameter("gender");
		String contactNumber=request.getParameter("contactNumber");
		String emailID=request.getParameter("emailID");
		String address=request.getParameter("address");
		String insuranceCompanyName=request.getParameter("insuranceCompanyName");
		String policyNumber=request.getParameter("policyNumber");
		String healthCardNumber=request.getParameter("healthCardNumber");
		String policyholderName=request.getParameter("policyholderName");
		String hospitalName=request.getParameter("hospitalName");
		String registrationNumber=request.getParameter("registrationNumber");
		String hospitalAddress=request.getParameter("hospitalAddress");
		String hospitalContactNumber=request.getParameter("hospitalContactNumber");
		String hospitalEmail=request.getParameter("hospitalEmail");
		String dateandTimeofAdmission=request.getParameter("dateandTimeofAdmission");
		String dateandTimeofDischarge=request.getParameter("dateandTimeofDischarge");
		String typeofAdmission=request.getParameter("typeofAdmission");
		String diagnosis=request.getParameter("diagnosis");
		String typeofTreatment=request.getParameter("typeofTreatment");
		String surgeryName=request.getParameter("surgeryName");
		String surgeryDate=request.getParameter("surgeryDate");
		String treatingDoctorName=request.getParameter("treatingDoctorName");
		String totalHospitalBillAmount=request.getParameter("totalHospitalBillAmount");
		String amountClaimed=request.getParameter("amountClaimed");
		String accountHolderName=request.getParameter("accountHolderName");
		String bankName=request.getParameter("bankName");
		String accountNumber=request.getParameter("accountNumber");
		String iFSCCode=request.getParameter("iFSCCode");
		String branchName=request.getParameter("branchName");
		String hospitalFinalBill=request.getParameter("hospitalFinalBill");
		String detailedBill=request.getParameter("detailedBill");
		String dischargeSummary=request.getParameter("dischargeSummary");
		String medicalReports=request.getParameter("medicalReports");
		String pharmacyBills=request.getParameter("pharmacyBills");
		String fIRAccidentReport=request.getParameter("fIRAccidentReport");
		String iDProof=request.getParameter("iDProof");
		String insuranceCardTPACard=request.getParameter("insuranceCardTPACard");
		String declarationcheckbox=request.getParameter("declarationcheckbox");
		String patientGuardianSignature=request.getParameter("patientGuardianSignature");
		String hospitalSealandcDoctorSignature=request.getParameter("hospitalSealandcDoctorSignature");
		// insert operation
		ClaimsEntity e= new ClaimsEntity();
		 
		 e.setPatientName(patientName);
		e.setAge(age);
			e.setDateofBirth(dateofBirth);
			e.setGender(gender);
			e.setContactNumber(contactNumber);
			e.setEmailID(emailID);
			e.setAddress(address);
			e.setInsuranceCompanyName(insuranceCompanyName);
			e.setPolicyNumber(policyNumber);
			e.setHealthCardNumber(healthCardNumber);
			e.setPolicyholderName(policyholderName);
			e.setHospitalName(hospitalName);
		    e.setRegistrationNumber(registrationNumber);
			e.setHospitalAddress(hospitalAddress);
			e.setHospitalContactNumber(hospitalContactNumber);
			e.setHospitalEmail(hospitalEmail);
			e.setDateandTimeofAdmission(dateandTimeofAdmission);
			e.setDateandTimeofDischarge(dateandTimeofDischarge);
			e.setTypeofAdmission(typeofAdmission);
			e.setDiagnosis(diagnosis);
			e.setTypeofTreatment(typeofTreatment);
			e.setSurgeryName(surgeryName);
			e.setSurgeryDate(surgeryDate);
		    e.setTreatingDoctorName(treatingDoctorName);
		    e.setTotalHospitalBillAmount(totalHospitalBillAmount);
			e.setAmountClaimed(amountClaimed);
			e.setAccountHolderName(accountHolderName);
			e.setBankName(bankName);
			e.setAccountNumber(accountNumber);
			e.setiFSCCode(iFSCCode);
			e.setBranchName(branchName);
			e.setHospitalFinalBill(hospitalFinalBill);
			e.setDetailedBill(detailedBill);
			e.setDischargeSummary(dischargeSummary);
			e.setMedicalReports(medicalReports);
			e.setPharmacyBills(pharmacyBills);
			e.setfIRAccidentReport(fIRAccidentReport);
			e.setiDProof(iDProof);
			e.setInsuranceCardTPACard(insuranceCardTPACard);
			e.setDeclarationcheckbox(declarationcheckbox);
			e.setPatientGuardianSignature(patientGuardianSignature);
			e.setHospitalSealandcDoctorSignature(hospitalSealandcDoctorSignature);
			
			ClaimsDao d= new ClaimsDao();
			int result =0;
			result =d.insert(e);
			if(result>0) {
				response.sendRedirect(request.getContextPath() + "/Success.html");

			}else {
				response.sendRedirect(request.getContextPath() + "/error.html");

			}
	}

}
