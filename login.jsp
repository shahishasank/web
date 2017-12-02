<%-- 
    Document   : login
    Created on : Jul 31, 2017, 10:40:25 PM
    Author     : Shasank
--%>

<%@page import="Database.DataManup"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <base target="_parent">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="mystyle.css">
        <style>
            td,p{
                font-size: 18px;
                font-weight: lighter;
                font-family: 'Open Sans',Arial,sans-serif;
                color: #f3f3f3;
            }
        </style>
        <%!String mail = null, pass = "", msg = "",name;
            int score;
        %>
        <%
            if (request.getParameter("userId") != null && request.getParameter("pass") != null) {
                mail = request.getParameter("userId");
                pass = request.getParameter("pass");
                DataManup ob = new DataManup();
                if (ob.checkUser(mail, pass)) {
                    msg="";
                    name=ob.getName(mail, pass);
                    score=ob.getScore(mail, pass);
                    response.sendRedirect("home.jsp?mail=" + mail + "&pass=" + pass+"&name="+name+"&score="+score);
                } else {
                    response.sendRedirect("LogPop.jsp?msg=Unknown_User");
                }
            }
        %>
    </head>
    <body>
        <form>
            <table>
                <tr>
                    <td>Email:</td>
                    <td><input type="email" name="userId" required/></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="pass" required/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="LogIn"></td>
                </tr>
            </table>
        </form>
        <p style="color:#ff0000"><%=request.getParameter("msg")%></p>
        <br>
        <a href="registration.jsp" target="_self">Sign Up Here</a><br>
        <a href="home.jsp">No Login</a>
    </body>
</body>
</html>
