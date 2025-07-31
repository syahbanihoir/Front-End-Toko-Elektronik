<%-- 
    Document   : index
    Created on : Jun 15, 2023, 2:20:25 PM
    Author     : hoirs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

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
            <a class="nav-link active" href="contact.jsp">Contact</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="product.jsp">Product </a>
          </li>
        </ul>
      </div>
    </div>
    </nav>
    <%--Akhir Navbar--%>
    
    <section class="bg-light text-dark" style=" min-height: 550px; padding-bottom: 10px">
    
        <article style="display: inline-block; width: 100%;">
            <div class="container">
                <h3 style="text-align: center; margin: 20px 0px">Contact US</h3>
            </div>
        </article>
        
        <article>
            <div class="container">
                <div style="min-height: 500px; width: 50%; float: left; padding-top:">
                    <br>
                    <table class="table table-hover table-borderless">
                        <thead>
                            <tr>
                                <th scope="col"></th>
                                <th scope="col">Hubungi Kami</th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Email</td>
                                <td>hoirsyahbani14@@gmail.com</td>
                            </tr>
                            <tr>
                                <td>Alamat</td>
                                <td>Jl.Meruya Selatan – Jakarta Barat</td>
                            </tr>
                            <tr>
                                <td>No.hp</td>
                                <td>081546856524</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                
                
                <div style="min-height: 500px; width: 50%; float: right;">
                    <div class="container py-4">
                      <form id="contactForm">

                        <!-- Name input -->
                        <div class="mb-3">
                          <label class="form-label" for="name">Name</label>
                          <input class="form-control" id="name" type="text" placeholder="Name" data-sb-validations="required" />
                        </div>

                        <!-- Email address input -->
                        <div class="mb-3">
                          <label class="form-label" for="emailAddress">Email Address</label>
                          <input class="form-control" id="emailAddress" type="email" placeholder="Email Address" data-sb-validations="required, email" />
                        </div>

                        <!-- Message input -->
                        <div class="mb-3">
                          <label class="form-label" for="message">Message</label>
                          <textarea class="form-control" id="message" type="text" placeholder="Message" style="height: 10rem;" data-sb-validations="required"></textarea>
                        </div>

                        <!-- Form submit button -->
                        <div class="d-grid gap-2 col-6 mx-auto" style="width: 100px">
                           <input type="submit" value="Submit" name="" class="btn btn-primary ps-4 pe-4">
                        </div>

                      </form>

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
