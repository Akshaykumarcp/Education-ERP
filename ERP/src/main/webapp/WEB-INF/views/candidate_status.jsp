<%@include file="header.jsp"%>

<style>
body  {
/* https://images.unsplash.com/photo-1457369804613-52c61a468e7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80.jpg */
  background-image: url(https://images.unsplash.com/photo-1498243691581-b145c3f54a5a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80.jpg);
  background-size: cover;
}

.error { 
		color: red; font-weight: bold; 
	}
</style>
<div class="container">
<div class="col-md-4" style="float:right; border: black;border-style: solid; border-radius: 25px; background-color: white;padding-top: 30px; padding-bottom: 30px">
<h4 style="font-size: 25px;padding-left: 20px; font-family:calibri; color: #4DB6AC">Check Status Of Application</h4>
<hr style="width: 200px;margin-top: 6px;border-style: ridge;border-block-color: black;">

<form:form method="GET" modelAttribute="status" action="/getCandidateStatus">
    <div class="input-group mb-3">
      <div class="input-group-prepend">
        <span class="input-group-text" style="background-color: blue; color: white">Enter Reference ID</span>
      </div>
      <form:input type="text" path="referenceid" class="form-control" placeholder="Reference ID" id="ref" name="ref"/>
    </div>
    <br/>
    <form:button type="submit"  style="margin-left: 60px" class="btn btn-outline-secondary ">Submit</form:button>
    <form:button type="reset" style=" margin-left: 60px" class="btn btn-outline-secondary">Reset</form:button>
    </form:form>
    </div></div>