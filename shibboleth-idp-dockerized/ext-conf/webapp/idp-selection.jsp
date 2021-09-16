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
              if (cookie.getName().equals("cu_username")) request.setAttribute("userNameCookie", cookie.getValue());
           }
        }
        %>
        UserName : <input type="text" id="userName" name="userName" value='<%= request.getAttribute("userNameCookie") %>'/>
        <br/>
        <br/>

        <button type="submit" name="flowChoice" value="BeyondIdentity">Students/Staff (passwordless-eligible</button>
        <button type="submit" name="flowChoice" value="Password">Alum (passwordless-ineligible)</button>
    </form>

</html>
