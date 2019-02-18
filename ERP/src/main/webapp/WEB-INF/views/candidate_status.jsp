<%@include file="header.jsp"%>


<div class="container">
<h1>Check Status Of Application</h1>
<br/>

<form:form method="GET" modelAttribute="status" action="/getCandidateStatus">
    <div class="input-group mb-3">
      <div class="input-group-prepend">
        <span class="input-group-text">Enter Reference ID</span>
      </div>
      <form:input type="text" path="referenceid" class="form-control" placeholder="Reference ID" id="ref" name="ref"/>
    </div>
    <br/>
    <form:button type="reset" class="btn btn-outline-secondary">Reset</form:button>
    <form:button type="submit" class="btn btn-outline-secondary">Submit</form:button>
    </form:form>
    </div>