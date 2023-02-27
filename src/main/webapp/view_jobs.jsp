<%@ page import="com.ais.dao.JobDao" %>
<%@ page import="com.ais.db.DBConnect" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ais.entity.Jobs" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Admin view jobs</title>
    <%@include file="all_component/allCss.jsp"%>

</head>
<body  style="background-color:#f0f1f2 ">
<%@include file="all_component/allCss.jsp"%>

<div class="container">
    <div class="row">
       <div class="col-md-12">
           <h5 class="text-center text-primary">All Jobs</h5>

           <%
               JobDao dao = new JobDao(DBConnect.getConn());
               List<Jobs> list = dao.getAllJobs();
               for (Jobs j : list){
           %>
           <div class="card mt-2">
               <div card-body>
                   <div class="text-center text-primary">
                       <i class="far-fa-clipboard fa-2x"></i>
                   </div>
                   <h6> <%=j.getTitle() %></h6>
                   <p>><%=j.getDescription()%> </p>
                   <br>
                   <div class="form-row">
                       <div class="form-group col-md-3">
                           <input type="text" class="form-control form-control-sm"
                           value="Location: <%=j.getLocation()%>" readonly>
                       </div>
                       <div class="form-group col-md-3">
                           <input type="text" class="form-control form-control-sm"
                                  value="Category: <%=j.getCategory()%>" readonly>
                       </div>
                       <div class="form-group col-md-3">
                           <input type="text" class="form-control form-control-sm"
                                  value="Status: <%=j.getStatus()%>" readonly>
                       </div>
                   </div>
                   <h6>Publish Date : <%=j.getPdate()%></h6>
                   <div class="text-center">
                       <a href="edit.jsp?id=<%=j.getId()%>" class="btn btn-sm bg-success text-white">Edit</a><a
                           href="#" class="btn btn-sm bg-danger text-white">Delete</a>
                   </div>
               </div>
           </div>
       </div>
    </div>
</div>
</body>
</html>