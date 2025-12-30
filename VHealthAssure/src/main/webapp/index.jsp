 
 <head>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
 
<style>
body{
  background:#f3f6fb;
  font-family:Poppins,Arial,sans-serif;
}

/* PAGE TITLE */
.container{
  text-align:center;
  font-size:30px;
  font-weight:800;
  margin:30px 0 20px;
  color:#003366;
}

/* CENTER PAGE */
.totalpage{
  display:flex;
  justify-content:center;
  padding:20px;
}

/* CARD */
form{
  width:900px;
  background:#ffffff;
  padding:35px 40px;
  border-radius:18px;
  box-shadow:0 20px 45px rgba(12,30,60,0.12);
}

/* SECTION TITLE */
h3{
  font-size:22px;
  font-weight:800;
  color:#003366;
  margin:30px 0 20px;
}

/* GRID ROW (LABEL + FIELD) */
.row{
  display:grid;
  grid-template-columns:220px 1fr;
  align-items:center;
  gap:20px;
  margin-bottom:16px;
}

/* LABEL */
label{
  font-size:14px;
  font-weight:600;
  color:#2e3a4e;
}

/* FIELD */
.field{
  display:flex;
  align-items:center;
  gap:10px;
}

/* ICON BOX */
.leading{
  width:44px;
  height:44px;
  border-radius:10px;
  border:2px solid #b7d0fb;
  display:flex;
  align-items:center;
  justify-content:center;
  font-size:18px;
  color:#6b7280;
  background:#fbfdff;
}

/* INPUT */
input,
select{
  flex:1;
  padding:12px;
  font-size:15px;
  border-radius:10px;
  border:2px solid #b7d0fb;
  background:#fbfdff;
  transition:0.25s;
}

/* FOCUS */
input:focus,
select:focus{
  outline:none;
  border-color:#003366;
  box-shadow:0 10px 26px rgba(23,105,255,0.2);
  transform:translateY(-1px);
}

/* BUTTON */
button{
  position:relative;          /* normal flow */
  display:block;
  margin:30px 0 0 auto;       /* RIGHT side */
  padding:12px 26px;          /* little bigger */
  background:#2563eb;         /* dashboard blue */
  color:#fff;
  border-radius:999px;        /* pill shape */
  font-size:14px;             /* slightly bigger text */
  font-weight:700;
  border:none;
  cursor:pointer;
}


/* MOBILE */
@media(max-width:700px){
  .row{
    grid-template-columns:1fr;
  }
}
/* ================= ICON BASE ================= */
.leading i{
  font-size:18px;
}

/* ================= USER / PERSON ================= */
.leading .fa-user,
.leading .fa-user-shield,
.leading .fa-user-doctor,
.leading .fa-signature{
  color:#2563eb; /* blue */
}

/* ================= EMAIL ================= */
.leading .fa-envelope{
  color:#64748b; /* grey */
}

/* ================= PHONE ================= */
.leading .fa-phone,
.leading .fa-phone-volume{
  color:#e11d48; /* red */
}

/* ================= DATE / CALENDAR ================= */
.leading .fa-calendar,
.leading .fa-calendar-days,
.leading .fa-calendar-check,
.leading .fa-calendar-xmark{
  color:#0ea5e9; /* sky blue */
}

/* ================= LOCATION ================= */
.leading .fa-location-dot{
  color:#16a34a; /* green */
}

/* ================= GENDER ================= */
.leading .fa-venus-mars{
  color:#7c3aed; /* purple */
}

/* ================= HOSPITAL / MEDICAL ================= */
.leading .fa-hospital,
.leading .fa-notes-medical,
.leading .fa-kit-medical,
.leading .fa-syringe,
.leading .fa-pills{
  color:#dc2626; /* medical red */
}

/* ================= MONEY / BILLING ================= */
.leading .fa-indian-rupee-sign,
.leading .fa-file-invoice-dollar{
  color:#059669; /* dark green */
}

/* ================= BANK / FINANCE ================= */
.leading .fa-building-columns,
.leading .fa-credit-card,
.leading .fa-code,
.leading .fa-code-branch{
  color:#1d4ed8; /* royal blue */
}

/* ================= POLICY / COMPANY ================= */
.leading .fa-building,
.leading .fa-id-card,
.leading .fa-id-badge{
  color:#f59e0b; /* orange */
}

/* ================= FILES / DOCUMENTS ================= */
.leading .fa-file-pdf,
.leading .fa-file-medical,
.leading .fa-file-lines,
.leading .fa-vials,
.leading .fa-file-shield{
  color:#b91c1c; /* dark red */
}

/* ================= CHECKBOX ================= */
.leading input[type="checkbox"]{
  width:18px;
  height:18px;
}

</style>


 


</head>
<html>
<body>
<h2 class="container">Medical Insurance Claim</h2>
<div class="totalpage">
<form action="ClaimServlet" method="post" >



<!--1.Patient Detail -->

<h3>1. Patient Details</h3>

<div class="row">
  <label><span style="color:red">*</span> Patient Name</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-user"></i></div>
    <input type="text" name="patientName" placeholder="Eg. Ravi Kumar" required>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span> Age</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-hashtag"></i></div>
    <input type="text" name="age" placeholder="Eg. 28" required>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span> Date of Birth</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-calendar-days"></i></div>
    <input type="date" name="dateofBirth" placeholder="dd-mm-yyyy" required>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span> Gender</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-venus-mars"></i></div>
    <select name="gender" required>
      <option value="">Select Gender</option>
      <option>Male</option>
      <option>Female</option>
      <option>Other</option>
    </select>
  </div>
</div>

<div class="row">
  <label>Contact Number</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-phone"></i></div>
    <input type="text" name="contactNumber" placeholder="10 digit mobile number">
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span> Email ID</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-envelope"></i></div>
    <input type="email" name="emailID" placeholder="you@example.com" required>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span> Address</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-location-dot"></i></div>
    <input type="text" name="address" placeholder="House No, Street, City, State" required>
  </div>
</div>

<!--2.PolicyDetai -->

<h3>2. Policy Details</h3>

<div class="row">
  <label><span style="color:red">*</span> Insurance Company</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-building"></i></div>
    <input type="text" name="insuranceCompanyName" placeholder="Eg. Star Health Insurance" required>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span> Policy Number</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-id-card"></i></div>
    <input type="text" name="policyNumber" placeholder="Eg. POL123456789" required>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span> Health Card Number</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-credit-card"></i></div>
    <input type="text" name="healthCardNumber" placeholder="Eg. HC987654321" required>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span> Policyholder Name</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-user-shield"></i></div>
    <input type="text" name="policyholderName" placeholder="Eg. Ramesh Kumar" required>
  </div>
</div>


<!-- 3.Hospital Details -->

<h3>3. Hospital Details</h3>

<div class="row">
  <label><span style="color:red">*</span> Hospital Name</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-hospital"></i></div>
    <input type="text" name="hospitalName" placeholder="Eg. Apollo Hospitals" required>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span> Registration Number</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-clipboard"></i></div>
    <input type="text" name="registrationNumber" placeholder="Hospital Registration ID" required>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span>Hospital Address</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-location-dot"></i></div>
    <input type="text" name="hospitalAddress" placeholder="Hospital full address" required>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span> Hospital Contact</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-phone-volume"></i></div>
    <input type="text" name="hospitalContactNumber" placeholder="Hospital contact number" required>
  </div>
</div>

<div class="row">
  <label>Hospital Email</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-envelope"></i></div>
    <input type="email" name="hospitalEmail" placeholder="hospital@example.com">
  </div>
</div>



<h3>4. Admission Details</h3>

<div class="row">
  <label><span style="color:red">*</span> Admission Date</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-calendar-check"></i></div>
    <input type="date" name="dateandTimeofAdmission" required>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span> Discharge Date</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-calendar-xmark"></i></div>
    <input type="date" name="dateandTimeofDischarge" required>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span> Type of Admission</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-bed"></i></div>
    <select name="typeofAdmission" required>
      <option value="">Select admission type</option>
      <option>Emergency</option>
      <option>Planned</option>
    </select>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span> Diagnosis</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-notes-medical"></i></div>
    <input type="text" name="diagnosis" placeholder="Final diagnosis" required>
  </div>
</div>



<h3>5. Treatment Details</h3>

<div class="row">
  <label><span style="color:red">*</span> Treatment Type</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-syringe"></i></div>
    <select name="typeofTreatment" required>
      <option value="">Select treatment type</option>
      <option>Medical</option>
      <option>Surgical</option>
    </select>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span> Surgery Name</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-kit-medical"></i></div>
    <input type="text" name="surgeryName" placeholder="Eg. Appendectomy" required>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span> Surgery Date</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-calendar"></i></div>
    <input type="date" name="surgeryDate" required>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span> Treating Doctor</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-user-doctor"></i></div>
    <input type="text" name="treatingDoctorName" placeholder="Dr. Name" required>
  </div>
</div>

<h3>6. Billing Details</h3>

<div class="row">
  <label><span style="color:red">*</span>Total Hospital Bill Amount</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-file-invoice-dollar"></i></div>
    <input type="number" name="totalHospitalBillAmount"
           placeholder="Eg. 250000" required>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span>Amount Claimed</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-indian-rupee-sign"></i></div>
    <input type="number" name="amountClaimed"
           placeholder="Eg. 200000" required>
  </div>
</div>




<h3>7. Bank Details for Claim Payment</h3>

<div class="row">
  <label><span style="color:red">*</span>Account Holder Name</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-user"></i></div>
    <input type="text" name="accountHolderName"
           placeholder="Eg. Ravi Kumar" required>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span>Bank Name</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-building-columns"></i></div>
    <input type="text" name="bankName"
           placeholder="Eg. State Bank of India" required>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span>Account Number</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-credit-card"></i></div>
    <input type="text" name="accountNumber"
           placeholder="Eg. 123456789012" required>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span>IFSC Code</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-code"></i></div>
    <input type="text" name="iFSCCode"
           placeholder="Eg. SBIN0000456" required>
  </div>
</div>

<div class="row">
  <label>Branch Name</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-code-branch"></i></div>
    <input type="text" name="branchName"
           placeholder="Eg. KPHB Branch">
  </div>
</div>


<h3>8. Documents to Upload (Mandatory)</h3>

<div class="row">
  <label><span style="color:red">*</span>Hospital Final Bill</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-file-pdf"></i></div>
    <input type="file" name="hospitalFinalBill" required>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span>Detailed Bill (Item-wise)</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-file-lines"></i></div>
    <input type="file" name="detailedBill" required>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span>Discharge Summary</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-file-medical"></i></div>
    <input type="file" name="dischargeSummary" required>
  </div>
</div>

<div class="row">
  <label>Medical Reports</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-vials"></i></div>
    <input type="file" name="medicalReports">
  </div>
</div>

<div class="row">
  <label>Pharmacy Bills</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-pills"></i></div>
    <input type="file" name="pharmacyBills">
  </div>
</div>

<div class="row">
  <label>FIR / Accident Report</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-file-shield"></i></div>
    <input type="file" name="fIRAccidentReport">
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span>ID Proof (Aadhar / PAN)</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-id-card"></i></div>
    <input type="file" name="iDProof" required>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span>Insurance Card / TPA Card</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-id-badge"></i></div>
    <input type="file" name="insuranceCardTPACard" required>
  </div>
</div>

<h3>9. Declaration and Signature</h3>



<div class="row">
  <label><span style="color:red">*</span>Declaration</label>
  <div class="field">
    <!-- leading box same as others -->
    <div class="leading">
      <input type="checkbox" name="declarationcheckbox" required>
    </div>

    <!-- sentence beside the box -->
    <div class="declaration-inline">
      I declare that the above information is true and complete
      to the best of my knowledge.
    </div>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span>Patient / Guardian Signature</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-signature"></i></div>
    <input type="text" name="patientGuardianSignature"
           placeholder="Enter full name" required>
  </div>
</div>

<div class="row">
  <label><span style="color:red">*</span>Hospital Seal and Doctor Signature</label>
  <div class="field">
    <div class="leading"><i class="fa-solid fa-stamp"></i></div>
    <input type="text" name="hospitalSealandcDoctorSignature"
           placeholder="Hospital seal / doctor name" required>
  </div>
</div>



<button type="Submit">Submit</button>


</form>
</div>
</body>
</html>
