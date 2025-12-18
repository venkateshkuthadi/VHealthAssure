<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String userName = (String) session.getAttribute("userName");
    if (userName == null) userName = "John Doe";

    int activePolicies = 1;
    int claimsFiled = 3;
    int approvedClaims = 2;
    String nextPremium = "₹4,200";

    String policyType = "Health Insurance";
    String city = "Hyderabad";
%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>User Dashboard | VHealthAssure</title>

<style>
:root{
  --primary:#0b2a4a;
  --primary-dark:#071d33;
  --accent:#2563eb;
  --success:#2e7d32;
  --warning:#ed6c02;
  --bg:#f4f6f9;
  --card:#ffffff;
  --text:#0f172a;
  --muted:#64748b;
}

/* RESET */
*{margin:0;padding:0;box-sizing:border-box;font-family:Poppins,Arial,sans-serif}
body{background:var(--bg);color:var(--text)}

/* HEADER */
header{
  height:64px;
  background:linear-gradient(135deg,var(--primary-dark),var(--primary));
  color:#fff;
  display:flex;
  align-items:center;
  justify-content:space-between;
  padding:0 32px;
}

/* BRAND WITH LOGO */
.brand{
  display:flex;
  align-items:center;
  gap:12px;
}

.logo-box{
  width:42px;
  height:42px;
  border-radius:12px;              /* rounded-square */
  background:linear-gradient(145deg,#f8fafc,#e2e8f0);
  display:flex;
  align-items:center;
  justify-content:center;
  box-shadow:
    0 6px 14px rgba(0,0,0,0.25),
    inset 0 2px z rgba(255,255,255,0.6);
}

.logo-box img{
  width:28px;
  height:28px;
  object-fit:contain;
}

.brand h1{
  font-size:20px;
  font-weight:600;
  letter-spacing:.3px;
}

/* PROFILE */
.profile-area{
  position:relative;
  display:flex;
  align-items:center;
  gap:10px;
  cursor:pointer;
  user-select:none;
}

.profile-avatar{
  width:38px;
  height:38px;
  border-radius:50%;
  background:linear-gradient(135deg,#2563eb,#1e40af);
  display:flex;
  align-items:center;
  justify-content:center;
  font-weight:600;
  font-size:15px;
  transition:transform .25s ease, box-shadow .25s ease;
}

.profile-area:hover .profile-avatar{
  transform:scale(1.05);
  box-shadow:0 8px 20px rgba(0,0,0,.35);
}

.profile-name{
  font-size:14px;
  opacity:.95;
}

/* DROPDOWN */
.profile-dropdown{
  position:absolute;
  top:52px;
  right:0;
  background:#fff;
  color:#0f172a;
  width:210px;
  border-radius:14px;
  box-shadow:0 20px 40px rgba(0,0,0,.2);
  overflow:hidden;
  transform:translateY(-10px) scale(.95);
  opacity:0;
  pointer-events:none;
  transition:all .25s ease;
  z-index:100;
}

.profile-area.active .profile-dropdown{
  transform:translateY(0) scale(1);
  opacity:1;
  pointer-events:auto;
}

.profile-dropdown a{
  display:block;
  padding:14px 18px;
  text-decoration:none;
  color:#0f172a;
  font-size:14px;
}

.profile-dropdown a:hover{
  background:#f1f5f9;
}

.profile-dropdown .logout{
  color:#c62828;
  font-weight:600;
  border-top:1px solid #e5e7eb;
}

/* LAYOUT */
.layout{
  display:grid;
  grid-template-columns:240px 1fr;
  min-height:calc(100vh - 64px);
}

/* SIDEBAR */
.sidebar{
  background:#081a30;
  padding:24px 16px;
}
.sidebar a{
  display:block;
  padding:12px 14px;
  margin-bottom:6px;
  color:#cbd5e1;
  text-decoration:none;
  border-radius:8px;
  font-size:14px;
}
.sidebar a:hover,.sidebar a.active{
  background:#1e293b;
  color:#fff;
}

/* MAIN */
main{padding:28px}

/* KPI */
.kpi-row{
  display:grid;
  grid-template-columns:repeat(4,1fr);
  gap:20px;
  margin-bottom:28px;
}
.kpi{
  background:var(--card);
  padding:18px 20px;
  border-radius:14px;
  box-shadow:0 8px 20px rgba(0,0,0,.08);
}
.kpi span{font-size:13px;color:var(--muted)}
.kpi h2{margin-top:6px;font-size:26px}

/* GRID */
.dashboard-grid{
  display:grid;
  grid-template-columns:2.2fr 1fr;
  gap:24px;
}

/* CARD */
.card{
  background:var(--card);
  border-radius:16px;
  padding:22px;
  box-shadow:0 10px 26px rgba(0,0,0,.08);
}
.card h3{margin-bottom:16px;color:var(--primary)}

/* TABLE */
table{width:100%;border-collapse:collapse;font-size:14px}
th,td{padding:12px;border-bottom:1px solid #e5e7eb;text-align:left}

/* BADGE */
.badge{
  padding:4px 10px;
  border-radius:999px;
  font-size:12px;
  color:#fff;
}
.active{background:var(--success)}
.approved{background:var(--success)}
.review{background:var(--warning)}

/* BUTTON */
.btn{
  display:inline-block;
  margin-top:14px;
  padding:9px 16px;
  background:var(--accent);
  color:#fff;
  border-radius:999px;
  text-decoration:none;
  font-size:13px;
}

.right-col{display:flex;flex-direction:column;gap:24px}
.alert{background:#fff7ed;border-left:6px solid var(--warning)}

footer{
  text-align:center;
  font-size:12px;
  color:#94a3b8;
  padding:16px;
}
</style>
</head>

<body>

<!-- HEADER -->
<header>
  <div class="brand">
    <div class="logo-box">
      <img src="images/logo.jpg" alt="VHealthAssure Logo">
    </div>
    <h1>VHealthAssure</h1>
  </div>

  <div class="profile-area" id="profileArea">
    <div class="profile-avatar"><%= userName.charAt(0) %></div>
    <div class="profile-name"><%= userName %></div>

    <div class="profile-dropdown">
      <a href="profile.jsp">My Profile</a>
      <a href="editProfile.jsp">Edit Profile</a>
      <a href="changePassword.jsp">Change Password</a>
      <a href="logout" class="logout">Logout</a>
    </div>
  </div>
</header>

<div class="layout">

<aside class="sidebar">
  <a class="active">Overview</a>
  <a>My Policies</a>
  <a>Claims</a>
  <a>Cashless Hospitals</a>
  <a>Payments</a>
  <a>Profile & KYC</a>
  <a>Support</a>
</aside>

<main>

<div class="kpi-row">
  <div class="kpi"><span>Active Policies</span><h2><%= activePolicies %></h2></div>
  <div class="kpi"><span>Claims Filed</span><h2><%= claimsFiled %></h2></div>
  <div class="kpi"><span>Approved Claims</span><h2><%= approvedClaims %></h2></div>
  <div class="kpi"><span>Next Premium Due</span><h2><%= nextPremium %></h2></div>
</div>

<div class="dashboard-grid">

<div>
  <div class="card">
    <h3>Active Policy Snapshot</h3>
    <table>
      <tr><th>Policy No</th><th>Type</th><th>Status</th></tr>
      <tr>
        <td>VH-982341</td>
        <td><%= policyType %></td>
        <td><span class="badge active">Active</span></td>
      </tr>
    </table>
    <a class="btn">View Policy Details</a>
  </div>

  <br>

  <div class="card">
    <h3>Recent Claims</h3>
    <table>
      <tr><th>Claim ID</th><th>Date</th><th>Status</th></tr>
      <tr><td>CLM-123</td><td>10-Jul-2025</td><td><span class="badge approved">Approved</span></td></tr>
      <tr><td>CLM-128</td><td>02-Aug-2025</td><td><span class="badge review">Under Review</span></td></tr>
    </table>
    <a class="btn">Track All Claims</a>
  </div>
</div>

<div class="right-col">
  <div class="card alert">
    <h3>Premium Reminder</h3>
    <p>Your next premium is due on <b>20-Aug-2025</b></p>
  </div>

  <div class="card">
    <h3>Cashless Hospitals in <%= city %></h3>
    <ul>
      <li>Care Multispeciality Hospital</li>
      <li>CityLife Medical Center</li>
      <li>MedPlus Network Hospital</li>
    </ul>
    <a class="btn">View Full Network</a>
  </div>

  <div class="card">
    <h3>KYC Health</h3>
    <p>Status: <span class="badge active">Verified</span></p>
    <a class="btn">View Documents</a>
  </div>
</div>

</div>
</main>
</div>

<footer>
© 2025 VHealthAssure Insurance Services | IRDAI Registered
</footer>

<script>
const profile = document.getElementById("profileArea");
profile.addEventListener("click", () => {
  profile.classList.toggle("active");
});
document.addEventListener("click", e => {
  if(!profile.contains(e.target)){
    profile.classList.remove("active");
  }
});
</script>

</body>
</html>
