<%-- 
    Document   : index
    Created on : Jun 15, 2023, 2:20:25 PM
    Author     : hoirs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="cart" scope="session" class="Beans.ShoppingCart"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <title>Java Web Programming</title>
        
        <style>
            .aktif:hover {
                background-color: rgba(0, 74, 67, 0.1);
            }
        </style>
        
    </head>
    <body>
        
          <%
            String id = request.getParameter("id");
            if(id!= null){
            String desc = request.getParameter("desc");
            String price =  request.getParameter("price");  
           
            cart.addItem(id, desc, Integer.valueOf(price),1);
        }
         
                   
                
            %>
        
        
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
            <a class="nav-link active" href="product.jsp">Product </a>
          </li>
        </ul>
      </div>
    </div>
    </nav>
    <%--Akhir Navbar--%>
    <section class="bg-light text-dark" style="min-height: 500px; padding-bottom: 10px">
    
        <article style="display: inline-block; width: 100%; padding-bottom: 10px;">
            <h3 style="text-align: center; margin-top: 20px">Product</h3>
            <div class="container">
                <ul style="list-style-type:none;">
                    <li class="btn btn-outline-info" style="float: right; border: none;">
                        <a href="ShoppingCart.jsp"><img src="IMG/icon_troli.png" alt="..." style="width: 30px;"></a>
                        <span style="color: black; font-size: 20px; font-weight: bold;"> <%=
                cart.getNumOfItems()
                  %></span>
                    </li>
                </ul>
            </div>
        </article>
                
               
        <article>
            <div class="container">
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <div class="col mt-0 py-3 ">
                        <div class="card h-100 aktif">
                            <img src="IMG/BARANG/pulpen.jpg" class="card-img-top mx-auto pt-3" alt="..." style="width: 200px;">
                            <div class="card-body mt-0">
                                <form action="product.jsp" method="post">
                                <p class="card-text mb-0" style="text-align: center">pulpen</p>
                                <h5 class="card-title text-danger" style="text-align: center;">Rp. 1000</h5>
                                <div class="d-grid gap-2 col-6 mx-auto" style="width: 100px">
                                    <input type="submit" name="Submit" value="Add" class="btn btn-primary ps-4 pe-4">
                                    <input type="hidden" name="id" value="1">
                                    <input type="hidden" name="desc" value="pulpen">
                                    <input type="hidden" name="price" value="1000"> 
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col mt-0 py-3 ">
                        <div class="card h-100 aktif">
                            <img src="IMG/BARANG/buku.jpg" class="card-img-top mx-auto pt-3" alt="..." style="width: 200px;">
                            <div class="card-body mt-0">
                                  <form action="product.jsp" method="post">
                                <p class="card-text mb-0" style="text-align: center">Buku</p>
                                <h5 class="card-title text-danger" style="text-align: center;">Rp. 10000</h5>
                                <div class="d-grid gap-2 col-6 mx-auto" style="width: 100px">
                                     <input type="submit" name="Submit" value="Add" class="btn btn-primary ps-4 pe-4">
                                    <input type="hidden" name="id" value="2">
                                    <input type="hidden" name="desc" value="buku">
                                    <input type="hidden" name="price" value="10000"> 
                                </div>
                                  </form>
                            </div>
                        </div>
                    </div>
                    <div class="col mt-0 py-3 ">
                        <div class="card h-100 aktif">
                            <img src="IMG/BARANG/spidol.jpg" class="card-img-top mx-auto pt-3" alt="..." style="width: 200px;">
                            <div class="card-body mt-0">
                                <form action="product.jsp" method="post">
                                     <p class="card-text mb-0" style="text-align: center">Spidol</p>
                                <h5 class="card-title text-danger" style="text-align: center;">Rp. 5000</h5>
                                <div class="d-grid gap-2 col-6 mx-auto" style="width: 100px">
                                     <input type="submit" name="Submit" value="Add" class="btn btn-primary ps-4 pe-4">
                                    <input type="hidden" name="id" value="3">
                                    <input type="hidden" name="desc" value="spidol">
                                    <input type="hidden" name="price" value="5000"> 
                                </div>
                                 </form>
                            </div>
                        </div>
                    </div>
                    <div class="col mt-0 py-3 ">
                        <div class="card h-100 aktif">
                            <img src="IMG/BARANG/pensill.jpg" class="card-img-top mx-auto pt-3" alt="..." style="width: 200px;">
                            <div class="card-body mt-0">
                                 <form action="product.jsp" method="post">
                                     <p class="card-text mb-0" style="text-align: center">Pensil</p>
                                <h5 class="card-title text-danger" style="text-align: center;">Rp. 3000</h5>
                                <div class="d-grid gap-2 col-6 mx-auto" style="width: 100px">
                                     <input type="submit" name="Submit" value="Add" class="btn btn-primary ps-4 pe-4">
                                    <input type="hidden" name="id" value="4">
                                    <input type="hidden" name="desc" value="Pensil">
                                    <input type="hidden" name="price" value="3000"> 
                                </div>
                                 </form>
                            </div>
                        </div>
                    </div>
                    <div class="col mt-0 py-3 ">
                        <div class="card h-100 aktif">
                            <img src="IMG/BARANG/krayon.jpg" class="card-img-top mx-auto pt-3" alt="..." style="width: 200px;">
                            <div class="card-body mt-0">
                               <form action="product.jsp" method="post">
                                     <p class="card-text mb-0" style="text-align: center">Krayon</p>
                                <h5 class="card-title text-danger" style="text-align: center;">Rp. 8000</h5>
                                <div class="d-grid gap-2 col-6 mx-auto" style="width: 100px">
                                     <input type="submit" name="Submit" value="Add" class="btn btn-primary ps-4 pe-4">
                                    <input type="hidden" name="id" value="5">
                                    <input type="hidden" name="desc" value="Krayon">
                                    <input type="hidden" name="price" value="8000"> 
                                </div>
                                 </form>
                            </div>
                        </div>
                    </div>
                    <div class="col mt-0 py-3 ">
                        <div class="card h-100 aktif">
                            <img src="IMG/BARANG/penghapuss.jpg" class="card-img-top mx-auto pt-3" alt="..." style="width: 200px;">
                            <div class="card-body mt-0">
                               <form action="product.jsp" method="post">
                                     <p class="card-text mb-0" style="text-align: center">Penghapus</p>
                                <h5 class="card-title text-danger" style="text-align: center;">Rp. 2000</h5>
                                <div class="d-grid gap-2 col-6 mx-auto" style="width: 100px">
                                     <input type="submit" name="Submit" value="Add" class="btn btn-primary ps-4 pe-4">
                                    <input type="hidden" name="id" value="6">
                                    <input type="hidden" name="desc" value="Penghapus">
                                    <input type="hidden" name="price" value="2000"> 
                                </div>
                                 </form>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </article>
    </section>
    
    <!--Footer-->
    <div class="card-footer text-muted">
        <p class="text-center">Copyright &copy;2023</p>
    </div>
    </body>
</html>
