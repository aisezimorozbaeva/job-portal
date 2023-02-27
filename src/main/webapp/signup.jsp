<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Signup Page</title>
    <%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
<%@include file="all_component/navbar.jsp"%>
<div class="row">
    <div class="col-md-4 offset-md-4">
        <div class="card">
            <div class="card-body">
                <h4 class="text-center">Registration Page</h4>
                <form action="register" method="post">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Enter Full Name</label>
                        <input type="text" class="form-control" id="exampleInputName1"
                               aria-describedby="emailHelp" required="required" name="fname">
                    </div>
                    <br>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Enter Email</label>
                        <input type="email" class="form-control" id="exampleInputEmail1"
                               aria-describedby="emailHelp" required="required" name="email">
                    </div>
                    <br>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Phone Number</label>
                        <input type="number" class="form-control" id="exampleInputNumber1" required="required" name="phno">
                    </div>
                    <br>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" required="required" name="password">
                    </div>
                    <br><br>
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" name="check"
                               id="exampleCheck1"><label class="form-check-label"
                                                         for="exampleCheck1">Check me out</label>
                    </div>
                    <br>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>

            </div>
        </div>
    </div>
</div>
</div>
<%@include file="all_component/footer.jsp"%>

</body>
</html>
