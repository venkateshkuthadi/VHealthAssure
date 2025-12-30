package com.VHealthAssure.Entity;

public class ClaimsEntity {
	//patient details
private String patientName;
private String age;
private String dateofBirth;
private String gender;
private String contactNumber;
private String emailID;
private String address;
//policy details
private String insuranceCompanyName;
private String policyNumber;
private String healthCardNumber;
private String policyholderName;
// hospital details
private String hospitalName;
private String registrationNumber;
private String hospitalAddress;
private String hospitalContactNumber;
private String  hospitalEmail;
//4.Admission Details
private String dateandTimeofAdmission;
private String  dateandTimeofDischarge;
private String  typeofAdmission;
private String  diagnosis;
//treatment details
private String typeofTreatment;
private String surgeryName;
private String surgeryDate;
private String treatingDoctorName;
//billing details
private String totalHospitalBillAmount;
private String amountClaimed;
//Bank details for claim payment
private String accountHolderName;
private String bankName;
private String accountNumber;
private String iFSCCode;
private String branchName;
//Documents to upload
private String hospitalFinalBill;
private String detailedBill;
private String dischargeSummary;
private String medicalReports;
private String pharmacyBills;
private String fIRAccidentReport;
private String iDProof;
private String insuranceCardTPACard;
//Declaration and signature
private String declarationcheckbox;
private String patientGuardianSignature;
private String hospitalSealandcDoctorSignature;
public String getPatientName() {
	return patientName;
}
public void setPatientName(String patientName) {
	this.patientName = patientName;
}
public String getAge() {
	return age;
}
public void setAge(String age) {
	this.age = age;
}
public String getDateofBirth() {
	return dateofBirth;
}
public void setDateofBirth(String dateofBirth) {
	this.dateofBirth = dateofBirth;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getContactNumber() {
	return contactNumber;
}
public void setContactNumber(String contactNumber) {
	this.contactNumber = contactNumber;
}
public String getEmailID() {
	return emailID;
}
public void setEmailID(String emailID) {
	this.emailID = emailID;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getInsuranceCompanyName() {
	return insuranceCompanyName;
}
public void setInsuranceCompanyName(String insuranceCompanyName) {
	this.insuranceCompanyName = insuranceCompanyName;
}
public String getPolicyNumber() {
	return policyNumber;
}
public void setPolicyNumber(String policyNumber) {
	this.policyNumber = policyNumber;
}
public String getHealthCardNumber() {
	return healthCardNumber;
}
public void setHealthCardNumber(String healthCardNumber) {
	this.healthCardNumber = healthCardNumber;
}
public String getPolicyholderName() {
	return policyholderName;
}
public void setPolicyholderName(String policyholderName) {
	this.policyholderName = policyholderName;
}
public String getHospitalName() {
	return hospitalName;
}
public void setHospitalName(String hospitalName) {
	this.hospitalName = hospitalName;
}
public String getRegistrationNumber() {
	return registrationNumber;
}
public void setRegistrationNumber(String registrationNumber) {
	this.registrationNumber = registrationNumber;
}
public String getHospitalAddress() {
	return hospitalAddress;
}
public void setHospitalAddress(String hospitalAddress) {
	this.hospitalAddress = hospitalAddress;
}
public String getHospitalContactNumber() {
	return hospitalContactNumber;
}
public void setHospitalContactNumber(String hospitalContactNumber) {
	this.hospitalContactNumber = hospitalContactNumber;
}
public String getHospitalEmail() {
	return hospitalEmail;
}
public void setHospitalEmail(String hospitalEmail) {
	this.hospitalEmail = hospitalEmail;
}
public String getDateandTimeofAdmission() {
	return dateandTimeofAdmission;
}
public void setDateandTimeofAdmission(String dateandTimeofAdmission) {
	this.dateandTimeofAdmission = dateandTimeofAdmission;
}
public String getDateandTimeofDischarge() {
	return dateandTimeofDischarge;
}
public void setDateandTimeofDischarge(String dateandTimeofDischarge) {
	this.dateandTimeofDischarge = dateandTimeofDischarge;
}
public String getTypeofAdmission() {
	return typeofAdmission;
}
public void setTypeofAdmission(String typeofAdmission) {
	this.typeofAdmission = typeofAdmission;
}
public String getDiagnosis() {
	return diagnosis;
}
public void setDiagnosis(String diagnosis) {
	this.diagnosis = diagnosis;
}
public String getTypeofTreatment() {
	return typeofTreatment;
}
public void setTypeofTreatment(String typeofTreatment) {
	this.typeofTreatment = typeofTreatment;
}
public String getSurgeryName() {
	return surgeryName;
}
public void setSurgeryName(String surgeryName) {
	this.surgeryName = surgeryName;
}
public String getSurgeryDate() {
	return surgeryDate;
}
public void setSurgeryDate(String surgeryDate) {
	this.surgeryDate = surgeryDate;
}
public String getTreatingDoctorName() {
	return treatingDoctorName;
}
public void setTreatingDoctorName(String treatingDoctorName) {
	this.treatingDoctorName = treatingDoctorName;
}
public String getTotalHospitalBillAmount() {
	return totalHospitalBillAmount;
}
public void setTotalHospitalBillAmount(String totalHospitalBillAmount) {
	this.totalHospitalBillAmount = totalHospitalBillAmount;
}
public String getAmountClaimed() {
	return amountClaimed;
}
public void setAmountClaimed(String amountClaimed) {
	this.amountClaimed = amountClaimed;
}
public String getAccountHolderName() {
	return accountHolderName;
}
public void setAccountHolderName(String accountHolderName) {
	this.accountHolderName = accountHolderName;
}
public String getBankName() {
	return bankName;
}
public void setBankName(String bankName) {
	this.bankName = bankName;
}
public String getAccountNumber() {
	return accountNumber;
}
public void setAccountNumber(String accountNumber) {
	this.accountNumber = accountNumber;
}
public String getiFSCCode() {
	return iFSCCode;
}
public void setiFSCCode(String iFSCCode) {
	this.iFSCCode = iFSCCode;
}
public String getBranchName() {
	return branchName;
}
public void setBranchName(String branchName) {
	this.branchName = branchName;
}
public String getHospitalFinalBill() {
	return hospitalFinalBill;
}
public void setHospitalFinalBill(String hospitalFinalBill) {
	this.hospitalFinalBill = hospitalFinalBill;
}
public String getDetailedBill() {
	return detailedBill;
}
public void setDetailedBill(String detailedBill) {
	this.detailedBill = detailedBill;
}
public String getDischargeSummary() {
	return dischargeSummary;
}
public void setDischargeSummary(String dischargeSummary) {
	this.dischargeSummary = dischargeSummary;
}
public String getMedicalReports() {
	return medicalReports;
}
public void setMedicalReports(String medicalReports) {
	this.medicalReports = medicalReports;
}
public String getPharmacyBills() {
	return pharmacyBills;
}
public void setPharmacyBills(String pharmacyBills) {
	this.pharmacyBills = pharmacyBills;
}
public String getfIRAccidentReport() {
	return fIRAccidentReport;
}
public void setfIRAccidentReport(String fIRAccidentReport) {
	this.fIRAccidentReport = fIRAccidentReport;
}
public String getiDProof() {
	return iDProof;
}
public void setiDProof(String iDProof) {
	this.iDProof = iDProof;
}
public String getInsuranceCardTPACard() {
	return insuranceCardTPACard;
}
public void setInsuranceCardTPACard(String insuranceCardTPACard) {
	this.insuranceCardTPACard = insuranceCardTPACard;
}
public String getDeclarationcheckbox() {
	return declarationcheckbox;
}
public void setDeclarationcheckbox(String declarationcheckbox) {
	this.declarationcheckbox = declarationcheckbox;
}
public String getPatientGuardianSignature() {
	return patientGuardianSignature;
}
public void setPatientGuardianSignature(String patientGuardianSignature) {
	this.patientGuardianSignature = patientGuardianSignature;
}
public String getHospitalSealandcDoctorSignature() {
	return hospitalSealandcDoctorSignature;
}
public void setHospitalSealandcDoctorSignature(String hospitalSealandcDoctorSignature) {
	this.hospitalSealandcDoctorSignature = hospitalSealandcDoctorSignature;
}



}
