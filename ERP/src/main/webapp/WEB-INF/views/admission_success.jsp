<%@include file="header.jsp"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
.container {
border: 2px solid #B22222;
border-radius: 5px;
margin-top: 15px;
margin-bottom: 15px;
}

body  {
/* https://images.unsplash.com/photo-1457369804613-52c61a468e7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80.jpg */
  background-image: url(https://images.unsplash.com/photo-1498243691581-b145c3f54a5a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80.jpg);
  background-size: cover;
}

</style>
<div class="container" >
<br/>

<!-- <div class="jumbotron">
  <h1>CheckOut Form</h1>

</div> -->
 <%-- <div class="row">
    <div class="col" style="background-color:lavender;align:center">
    <%= session.getAttribute("candidateRef") %>
    
    <c:out value="${sessionScope.candid.fullname}"/>
    <h5>Reference ID :- ${lists.fullname}</h5><br/>
    
    
    
    </div>
    <div class="col" style="background-color:lavender;">Name: -</div>
  </div> --%>
  
  <br/>
  <div class="card border-info mb-3" style="max-width: 80rem;">
  <div class="card-header bg-transparent border-success"><h3>Pay Online Admission Application Form 2019</h3></div>
  <div class="card-body text-success">
    <h5 class="card-title"></h5>
<%-- <h1>a - ${phone}</h1>
<h1>a - ${mail}</h1> --%>
    <p class="card-text" style="font-size:18px;">Your details for Online Admission Form , March 2019 have been saved temporarily. The final processing of Application Form will begin only after the successfully payment of Application Form.</p>
    <p class="card-text" style="font-size:18px;">You're required to pay an amount of Rs.<span style="color:red; font-size:18px"> 250 /- </span> towards Application Form Fee.</p>
  </div>
  <!-- <div class="card-footer bg-transparent border-info">Disclaimer ------------------------------------</div> -->
  
  <div>
    <form action="/purchase" method="POST" align="center">
<!-- Note that the amount is in paise = 50 INR -->
<script
    src="https://checkout.razorpay.com/v1/checkout.js"
    data-key="rzp_test_cFBYIVdeTAg6dy"
    data-amount="25000"
    data-buttontext="Pay Application Form Fee (Rs.250/-)"
    data-name="Credessol College"
    data-description="Online Application Form Fee Payment."
    data-image="https://credessol.com/wp-content/uploads/2019/02/c-logo-150x150.png"
    <%-- ${lists.phonenumber} --%>
    data-prefill.name="${phone}"
    data-prefill.email="${mail}"
    data-theme.color="#F37254"
></script>
<input type="hidden" value="Hidden Element" name="hidden">
</form>
  </div>
  
  
  
</div>


  
  
</div>