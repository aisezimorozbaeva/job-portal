
<%@ page contentType="text/html;charset=UTF-8"
         language="java" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin: Post Jobs</title>
    <%@include file="all_component/allCss.jsp"%>

</head>
<body style="background-color: #f0f1f2">
<%@include file="all_component/navbar.jsp"%>
 <div class="container p-2">
    <div class="col-md-10 offset-md-1">
        <div class="card">
            <div class="card-body">
                <i class="fas fa-user-friends fa-3x"></i>
                <c:if test="${not empty succMsg}">
                    <div class="alert alert-success" role="alert">${succMsg}</div>
                    <c:remove var="succMsg" />
                </c:if>
                            <h5>Add Job</h5>
                <form action="add_job" method="post">
                    <div class="form-group">
                        <label >Enter Title</label>
                        <input type="text" name="title"
                               required class="form-control">
                    </div>
                    <br>
                    <div class="form-group">
                        <div class="form-group col-md-4">
                         <label>Location</label>
                        <select name="Location" class="custom-select"
                                id="inlineForCustomSelectPref">
                            <option selected>Choose...</option>
                            <option value="Bishkek">Bishkek</option>
                            <option value="Osh">Osh</option>
                            <option value="Jalal-Abad">Jalal-Abad</option>
                            <option value="Naryn">Naryn</option>
                            <option value="Issyk-Kol">Issyk-Kol</option>
                            <option value="Chyi">Chyi</option>
                            <option value="Batken">Batken</option>
                            <option value="Talas">Talas</option>
                        </select>
                    </div>
                        <br>
                        <div class="form-group col-md-4">
                         <label>Category</label>
                            <select class="custom-select"
                                    id="inlineForCustomSelectPre" name="category">
                                <option selected>Choose...</option>
                                <option value="IT">IT</option>
                                <option value="Developer">Developer</option>
                                <option value="Banking">Banking</option>
                                <option value="Engineer">Engineer</option>
                                <option value="Teacher">Teacher</option>
                            </select>
                        </div>
                        <br>
                        <div class="form-group col-md-4">
                            <label>Status</label>
                            <select class="form-control" name="status">
                                <option class="Active" value="Active">Active</option>
                                <option class="Inactive" value="Inactive">Inactive</option>
                            </select>
                        </div>
                    </div>
                    <br>
                    <div class="form-group">
                        <label>Enter Description</label>
                        <textarea required rows="6" cols="" name="desc"
                                  class="form-control"></textarea>
                    </div>
                    <button class="btn btn-success"> Publish Job</button>
                    </form>
               </div>
           </div>
        </div>
 </div>

</body>
</html>
