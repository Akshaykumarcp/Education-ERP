<%@include file="header.jsp"%> 
<style>
.container {
border: 2px solid #B22222;
border-radius: 5px;
margin-top: 15px;
margin-bottom: 15px;
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
  <div class="card-header bg-transparent border-success">Pay Online Admission Application Form 2019</div>
  <div class="card-body text-success">
    <h5 class="card-title"></h5>
    <p class="card-text">Your details for Online Admission Form , March 2019 have been saved temporarily. The final processing of Application Form will begin only after the successfully payment of Application Form.</p>
    <p class="card-text">You're required to pay an amount of Rs.<span style="color:red; font-size:18px"> 250 /- </span> towards Application Form Fee.</p>
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
    data-image="https://your-awesome-site.com/your_logo.jpg"
    <%-- ${lists.phonenumber} --%>
    data-prefill.name=""
    data-prefill.email=""
    data-theme.color="#F37254"
></script>
<input type="hidden" value="Hidden Element" name="hidden">
</form>
  </div>
  
  
  
</div>


  
  
</div>