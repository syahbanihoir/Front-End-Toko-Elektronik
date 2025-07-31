<%-- 
    Document   : checkout
    Created on : Jun 27, 2023, 8:18:55 PM
    Author     : User
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="cart" scope="session" class="Beans.ShoppingCart"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
        
   
     
   <%
out.print("<script>alert('Terima kasih sudah berbelanja di toko kami :) Silahkan Transfer Rekening 1234 5678 9876 Sebesar Rp " + cart.getTotalbayar() + "')</script>");


               out.print("<script>document.location='index.jsp'</script>");
           Enumeration a = cart.getEnumeration();
                   String[] tmpItemm;
                   while(a.hasMoreElements()) {            
                     tmpItemm=(String[])a.nextElement();                 
                    cart.removeItem(tmpItemm[0]);
      
      }
      

       %>
    
     
    }
  
    </body>
</html>
