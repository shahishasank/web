<%-- 
    Document   : LogPop
    Created on : Jul 31, 2017, 6:57:21 PM
    Author     : Shasank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>2048</title>
       
        <link rel="stylesheet" type="text/css" href="mystyle.css">
        <%!String msg=" ";%>
        <%
            try{
            msg="login.jsp?msg="+request.getParameter("msg");
            }catch(Exception e){
                msg="";
            }
            %>
    </head>
    <body style="background-color:#3f004a">
        <div class="main">
            <center><img src="Images/ic_app.png" height="500" width="500"/></center>
        </div>
        
        <div class="ag">
            <div class="login">
                <iframe src=<%=msg%>></iframe>
            </div>
        </div>

    </body>
</html>
