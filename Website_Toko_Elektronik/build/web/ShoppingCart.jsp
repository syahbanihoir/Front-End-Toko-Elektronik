<%-- 
    Document   : ShoppingCart
    Created on : Jun 18, 2023, 1:23:07 PM
    Author     : hoirs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.*" %>

<jsp:useBean id="cart" scope="session" class="Beans.ShoppingCart"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <title>Java Web Programming</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark px-4">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                <a class="nav-link" aria-current="page" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.jsp">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.jsp">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="product.jsp">Product </a>
                </li>
            </ul>
        </div>
    </div>
    </nav>
    <%--Akhir Navbar--%>
    
    <section class="px-5 pt-1 bg-light text-dark">
        <div style="min-height: 500px; width: 100%;" >
            <table class="mx-auto table table-bordered table-striped" style="width: auto;">
                <h4 class="text-center pt-4 pb-2">Shopping Cart Contents</h4>
                <thead>
                    <tr style="text-align: center;">
                        <th scope="col" class="text-center">No.</th>
                        <th scope="col">Nama Barang</th>
                        <th scope="col">Harga</th>
                        <th scope="col">Jumlah Beli</th>
                        <th scope="col">Total Harga</th>
                        <th scope="col" >&nbsp;Aksi&nbsp;</th>
                    </tr>
                </thead>
                 <%    
                     
                     
                     
                       String id = request.getParameter("id");
          if(id!= null){
          String desc = request.getParameter("desc");
           String price =  request.getParameter("price");  
         
           cart.addItem(id, desc, Integer.valueOf(price),1);
            
                    }
                    
                     String Id = request.getParameter("Id");
          if(Id!= null){
          String Desc = request.getParameter("Desc");
           String Price =  request.getParameter("Price");  
         
           cart.kurangItem(Id, Desc, Integer.valueOf(Price),1);
            
                    }
                    
                    
                      String ID = request.getParameter("ID");
          if(ID!= null){
          
         
           cart.removeItem(ID);
            
                    }
                     
                     
                     
                    Enumeration e = cart.getEnumeration();
                    String[] tmpItem;
                    int no=0;
                     int total_harga=0;
                    while(e.hasMoreElements()) {
                    no++;
                   
                        tmpItem=(String[])e.nextElement();
                        
                       total_harga =(Integer.parseInt(tmpItem[3])*Integer.parseInt(tmpItem[2]));
//                     cart.removeItem(tmpItem[0]);
                       
                %>
                  <tr>
                      <td align="center" class="py-3"><%=no%>.</td>
                    <td class="py-3"><%=tmpItem[1]%></td>
                    <td align="center" class="py-3">Rp. <%=tmpItem[2]%></td>
                    <td align="center">
                        <form action="ShoppingCart.jsp" method="post" style="display: inline-block;">
                            <input type="submit" name="Submit" value="-" class="btn btn-light me-2 border border-2 fw-bold" style="width: 38px;">
                            <input type="hidden" name="Id" value="<%=tmpItem[0]%>">
                            <input type="hidden" name="Desc" value="<%=tmpItem[1]%>">
                            <input type="hidden" name="Price" value="<%=tmpItem[2]%>"> 
                        </form>
                        <%=tmpItem[3]%>
                        <form action="ShoppingCart.jsp" method="post" style="display: inline-block;">
                            <input type="submit" name="Submit" value="+" class="btn btn-light ms-2 border border-2 fw-bold" style="width: 38px;">
                            <input type="hidden" class="btn btn-light ms-2 border border-2 fw-bold" name="id" value="<%=tmpItem[0]%>">
                            <input type="hidden" class="btn btn-light ms-2 border border-2 fw-bold" name="desc" value="<%=tmpItem[1]%>">
                           <input type="hidden" class="btn btn-light ms-2 border border-2 fw-bold" name="price" value="<%=tmpItem[2]%>">   
                        </form>
                    </td>     
                    <td align="center" class="py-3">Rp. <%=total_harga%></td>
                    <td align="center"> 
                        <form action="ShoppingCart.jsp" method="post" style="display: inline-block;">
                            <input type="submit" name="Submit" value="&#128465;" class="btn btn-danger fas fa-trash ms-2 border border-2 fw-bold" style="width: 38px;">
                            <input type="hidden" class="btn btn-light ms-2 border border-2 fw-bold" name="ID" value="<%=tmpItem[0]%>"> 
                        </form>
                     </td>
                </tr>
                <%
                    }
                %>
                
                    <tr class="table-info">
                        <th colspan="4" class="text-center">Total Bayar</th>
                        <th>Rp. <%=
                cart.getTotalbayar()
                  %></th>
                        <th></th>
                    </tr>
                </tbody>
            </table>
            
            <div class="d-grid gap-2 col-6 mx-auto" style="width: 100px">
                

                
                     
                  <% double totalBayar = cart.getTotalbayar(); %>

                        
                                       <%
                                       
                        
                        
                        if(  totalBayar == 0){
                        %>
                     
                          <input type="submit" onclick="showAlert()"  value="Check Out" name="" class="btn btn-success ps-4 pe-4" disabled>
                        
                        <%
                    }else{
                        %>
                         <a href="checkout.jsp">
              
               
                          <input type="submit" onclick="showAlert()"  value="Check Out" name="" class="btn btn-success ps-4 pe-4" >
                           </a>
                        <%
                        }
                        
                      
                        %>
               
            </div>
        </div>
    </section>
    
    <!--Footer-->
    <div class="card-footer text-muted">
        <p class="text-center">Copyright &copy;2023</p>
    </div>
    
    
    </body>
</html>
