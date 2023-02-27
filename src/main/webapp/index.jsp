<%@ page import="java.sql.Connection" %>
<%@ page import="com.ais.db.DBConnect" %>
<!DOCTYPE html>
<meta charset="ISO-8859-1" >
<title>Insert Title here</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.back-img{
background: url("img/jobs.jpg");
    width: 100%;
    height: 80vh;
    background-repeat: no-repeat;
    background-size:cover ;
}

</style>
</head>
<body>
<%@include file="all_component/navbar.jsp"%>
<%Connection conn = DBConnect.getConn();
 System.out.println(conn); %>


<div class="container-fluid back-img">
    <div class="text-center">
        <h1 class="text-white p-4">
            <i class="fa fa-book" aria-hidden="true"></i>Online Job Portal
        </h1>
    </div>
</div>
<%@include file="all_component/footer.jsp"%>

</body>
</html>