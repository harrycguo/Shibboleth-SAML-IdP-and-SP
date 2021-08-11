<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
    <form method="POST" action="External">
        <input type="hidden" name="conversation" value='<%= request.getParameter("conversation") %>'>

        <h1>IDP SELECTION:</h1>
        <%
        Cookie cookie = null;
        Cookie[] cookies = null;

        // Get an array of Cookies associated with the this domain
        cookies = request.getCookies();
        request.setAttribute("userNameCookie", "");

        if (cookies != null) {
           for (int i = 0; i < cookies.length; i++) {
              cookie = cookies[i];
              if (cookie.getName().equals("external_auth_username")) request.setAttribute("userNameCookie", cookie.getValue());
           }
        }
        %>
        UserName : <input type="text" id="userName" name="userName" value='<%= request.getAttribute("userNameCookie") %>'/>
        <br/>
        <br/>
        <input type="checkbox" id="rememberMe" name="rememberMe" value="true">
        <label for="rememberMe">Remember Me?</label>
        <br/>
        <br/>

        <input type="submit" name="flowChoice" value="BeyondIdentity"/>
        <input type="submit" name="flowChoice" value="Password">
    </form>

</html>
