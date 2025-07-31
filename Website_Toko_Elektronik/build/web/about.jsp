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
            <a class="nav-link active" href="about.jsp">About</a>
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
    
    <section class="bg-light text-dark" style="min-height: 300px; padding-bottom: 10px">
    
        <article style="display: inline-block; width: 100%;">
            <div style="min-height: 500px;">
                <h3 style="text-align: center; margin: 20px 0px">About</h3>
                <div class="container">
                    <h3 style="text-align: center; margin: 20px 0px;">Selamat datang di Toko Alat Tulis!</h3>
                    <p style="text-align: justify; text-indent: 4em;">Kami dengan bangga mempersembahkan kepada Anda platform online kami yang inovatif, tempat di mana Anda dapat menemukan berbagai macam produk terbaik dari berbagai merek terkenal,
                    <p style="text-align: justify; text-indent: 4em;">Komitmen kami adalah memberikan pengalaman belanja yang tak tertandingi kepada pelanggan kami. Dengan antarmuka pengguna yang intuitif dan desain yang menawan, kami berusaha menjadikan kunjungan Anda ke situs kami menjadi pengalaman yang menyenangkan dan praktis. Dengan sekali klik, Anda dapat menjelajahi koleksi lengkap kami, memilih produk yang Anda inginkan, dan mengatur pengiriman dengan mudah. Kami menawarkan kemudahan, kenyamanan, dan keamanan dalam satu paket.
                    <p style="text-align: justify; text-indent: 4em;">kepuasan pelanggan adalah prioritas utama kami. Tim kami yang berpengalaman dan ramah siap membantu Anda dalam setiap langkah perjalanan belanja Anda. Jika Anda memiliki pertanyaan tentang produk, kebijakan pengembalian, atau membutuhkan saran dalam memilih produk yang sesuai dengan kebutuhan Anda, jangan ragu untuk menghubungi kami. Kami siap memberikan bantuan yang Anda butuhkan.
                    <!--<p style="text-align: justify; text-indent: 4em;">Selogan kami adalah "Berikan Hidup Anda Sentuhan Teknologi Terbaik". Kami percaya bahwa teknologi dapat mengubah cara hidup kita menjadi lebih baik. Oleh karena itu, kami berkomitmen untuk menyediakan produk-produk elektronik terbaik dengan teknologi terkini, dari smartphone cerdas hingga perangkat rumah pintar yang inovatif. Dengan menggunakan produk-produk kami, Anda dapat merasakan kemajuan teknologi dalam kehidupan sehari-hari Anda.-->
                    <!--<p style="text-align: justify; text-indent: 4em;">Kami memahami bahwa keandalan, kualitas, dan harga yang kompetitif adalah faktor penting dalam memilih produk elektronik. Itulah mengapa kami bekerja sama dengan merek terkemuka di industri ini untuk menyediakan produk yang memenuhi standar tertinggi. Dari telepon seluler, tablet, laptop, hingga perangkat audio dan video, kami memiliki semua yang Anda butuhkan untuk memenuhi kebutuhan teknologi Anda.-->
                    <p style="text-align: justify; text-indent: 4em;">Terima kasih telah memilih Home Website Toko Elektronik sebagai destinasi belanja elektronik Anda. Segera jelajahi situs kami dan temukan beragam produk unggulan kami yang akan memenuhi kebutuhan Anda. Bersama-sama, mari kita ciptakan masa depan yang lebih cerdas dan terhubung melalui teknologi. Selamat berbelanja!</p>
                </div>
            </div>
        </article>
        
<!--        <article>
            <h5 style="text-align: center; margin: 20px 0px">Nama-nama anggota kelompok 3</h5>
            <div class="container">
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <div class="col mt-0 py-3">
                        <div class="card h-100">
                            <img src="IMG/PROFIL/januu.jpg" class="card-img-top mx-auto pt-3" alt="..." style="width: 150px; border-radius: 50%;">
                            <div class="card-body">
                                <h5 class="card-title" style="text-align: center;">Januwa Putra Wiastopo</h5>
                                <h5 class="card-title" style="text-align: center;">2011500390</h5>
                                <div style="width: 100%; float: left; padding-top:">
                                    <table class="table table-hover table-borderless">
                                        <tr>
                                            <td>Email</td>
                                            <td>: januwa@gmail.com</td>
                                        </tr>
                                        <tr>
                                            <td>Alamat</td>
                                            <td>: Jl. Joglo Raya - Kota Jakarta &nbsp;&nbsp;Barat</td>
                                        </tr>
                                        <tr>
                                            <td>No.hp</td>
                                            <td>: 081576883729</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col mt-0 py-3">
                        <div class="card h-100">
                            <img src="IMG/PROFIL/hoir.jpg" class="card-img-top mx-auto pt-3" alt="..." style="width: 150px; border-radius: 50%; ">
                            <div class="card-body">
                                <h5 class="card-title" style="text-align: center;">Syahbani Hoir</h5>
                                <h5 class="card-title" style="text-align: center;">2011500432</h5>
                                <table class="table table-hover table-borderless">
                                    <tr>
                                        <td>Email</td>
                                       <td>: syahbanihoir@gmail.com</td>
                                    </tr>
                                    <tr>
                                        <td>Alamat</td>
                                        <td>: Jl. Manunggal - Kota Jakarta &nbsp;&nbsp;Barat</td>
                                    </tr>
                                    <tr>
                                        <td>No.hp</td>
                                        <td>: 08154685830</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col mt-0 py-3">
                        <div class="card h-100">
                            <img src="IMG/PROFIL/zharif.jpg" class="card-img-top mx-auto pt-3" alt="..." style="width: 150px; border-radius: 50%;">
                            <div class="card-body">
                                <h5 class="card-title" style="text-align: center;">Muhammad Zharif Firdyansyah</h5>
                                <h5 class="card-title" style="text-align: center;">2011500580</h5>
                                <table class="table table-hover table-borderless">
                                    <tr>
                                        <td>Email</td>
                                       <td>: muhammadzharif@gmail.com</td>
                                    </tr>
                                    <tr>
                                        <td>Alamat</td>
                                        <td>: Jl. Pamulang - Kota Tangerang &nbsp;&nbsp;Selatan</td>
                                    </tr>
                                    <tr>
                                        <td>No.hp</td>
                                        <td>: 08154685830</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </article>-->
    </section>
    
    <!--Footer-->
    <div class="card-footer text-muted">
        <p class="text-center">Copyright &copy;2023</p>
    </div>
    </body>
</html>
