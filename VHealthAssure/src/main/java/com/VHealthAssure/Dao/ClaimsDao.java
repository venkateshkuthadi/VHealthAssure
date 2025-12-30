package com.VHealthAssure.Dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.time.LocalDate;
import java.time.format.DateTimeParseException;

import com.VHealthAssure.Entity.ClaimsEntity;



public class ClaimsDao {
Connection con;
public int insert(ClaimsEntity e) {
	int result=0;
	try {
	Connection con= MyProjectInst.getInstance().getConnection();
	PreparedStatement ps=con.prepareStatement("insert into  claimData (patientName, age, dateofBirth, gender, contactNumber, emailID, address, insuranceCompanyName, policyNumber, healthCardNumber, policyholderName, hospitalName, registrationNumber, hospitalAddress, hospitalContactNumber, hospitalEmail, dateandTimeofAdmission, dateandTimeofDischarge, typeofAdmission, diagnosis, typeofTreatment, surgeryName, surgeryDate, treatingDoctorName, totalHospitalBillAmount, amountClaimed, accountHolderName, bankName, accountNumber, iFSCCode, branchName, hospitalFinalBill, detailedBill, dischargeSummary, medicalReports, pharmacyBills, fIRAccidentReport, iDProof, insuranceCardTPACard, declarationcheckbox, patientGuardianSignature, hospitalSealandcDoctorSignature) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,e.getPatientName());
	ps.setString(2,e.getAge());
	
	if (e.getDateofBirth() != null && !e.getDateofBirth().trim().isEmpty()) {
	    try {
	        LocalDate adm = LocalDate.parse(e.getDateofBirth()); // yyyy-MM-dd
	        ps.setDate(3, Date.valueOf(adm));
	    } catch (DateTimeParseException ex) {
	        ps.setDate(3, null);
	    }
	} else {
	    ps.setDate(3, null);
	}


	ps.setString(4,e.getGender());
	ps.setString(5,e.getContactNumber());
	ps.setString(6,e.getEmailID());
	ps.setString(7,e.getAddress());
	ps.setString(8,e.getInsuranceCompanyName());
	ps.setString(9,e.getPolicyNumber());
	ps.setString(10,e.getHealthCardNumber());
	ps.setString(11,e.getPolicyholderName());
	ps.setString(12,e.getHospitalName());
	ps.setString(13,e.getRegistrationNumber());
	ps.setString(14,e.getHospitalAddress());
	ps.setString(15,e.getHospitalContactNumber());
	ps.setString(16,e.getHospitalEmail());
	ps.setString(17,e.getDateandTimeofAdmission());
	
	if (e.getDateandTimeofAdmission() != null && !e.getDateandTimeofAdmission().trim().isEmpty()) {
	    try {
	        LocalDate adm = LocalDate.parse(e.getDateandTimeofAdmission()); // yyyy-MM-dd
	        ps.setDate(17, Date.valueOf(adm));
	    } catch (DateTimeParseException ex) {
	        ps.setDate(17, null);
	    }
	} else {
	    ps.setDate(17, null);
	}

	
	ps.setString(18,e.getDateandTimeofDischarge());
	
	// --- dateandTimeofDischarge (index 18) ---
	if (e.getDateandTimeofDischarge() != null && !e.getDateandTimeofDischarge().trim().isEmpty()) {
	    try {
	        LocalDate dis = LocalDate.parse(e.getDateandTimeofDischarge());
	        ps.setDate(18, Date.valueOf(dis));
	    } catch (DateTimeParseException ex) {
	        ps.setDate(18, null);
	    }
	} else {
	    ps.setDate(18, null);
	}

	
	ps.setString(19,e.getTypeofAdmission());
	ps.setString(20,e.getDiagnosis());
	ps.setString(21,e.getTypeofTreatment());
	ps.setString(22,e.getSurgeryName());
	ps.setString(23,e.getSurgeryDate());
	
	// --- surgeryDate (index 23) if you use <input type="date"> for surgeryDate ---
	if (e.getSurgeryDate() != null && !e.getSurgeryDate().trim().isEmpty()) {
	    try {
	        LocalDate sdate = LocalDate.parse(e.getSurgeryDate());
	        ps.setDate(23, Date.valueOf(sdate));
	    } catch (DateTimeParseException ex) {
	        ps.setDate(23, null);
	    }
	} else {
	    ps.setDate(23, null);
	}


	ps.setString(24,e.getTreatingDoctorName());
	ps.setString(25,e.getTotalHospitalBillAmount());
	ps.setString(26,e.getAmountClaimed());
	ps.setString(27,e.getAccountHolderName());
	ps.setString(28,e.getBankName());
	ps.setString(29,e.getAccountNumber());
	ps.setString(30,e.getiFSCCode());
	ps.setString(31,e.getBranchName());
	ps.setString(32,e.getHospitalFinalBill());
	ps.setString(33,e.getDetailedBill());
	ps.setString(34,e.getDischargeSummary());
	ps.setString(35,e.getMedicalReports());
	ps.setString(36,e.getPharmacyBills());
	ps.setString(37,e.getfIRAccidentReport());
	ps.setString(38,e.getiDProof());
	ps.setString(39,e.getInsuranceCardTPACard());
	ps.setString(40,e.getDeclarationcheckbox());
	ps.setString(41,e.getPatientGuardianSignature());
	ps.setString(42,e.getHospitalSealandcDoctorSignature());
	
	result=ps.executeUpdate();
	}catch(Exception e1) {
		e1.printStackTrace();
		
	}
	return result;
	
}
}
