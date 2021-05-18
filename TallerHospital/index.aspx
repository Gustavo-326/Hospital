<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TallerHospital.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <title>Clinica Las Americas</title>
</head>
<body>
    <header>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.aspx">Clinica Las Americas</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="Citas.aspx">Citas</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="medicos.aspx">Medicos</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="pacientes.aspx">Pacientes</a>
      </li>

    </ul>
  </div>
</nav>

    </form>
    <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/bannerCovid2.PNG" class="d-block w-100" alt="banner1">
    </div>
    <div class="carousel-item">
      <img src="img/bannerMedic.PNG" class="d-block w-100" alt="banner2">
    </div>
    <div class="carousel-item">
      <img src="img/bannertele.PNG" class="d-block w-100" alt="banner3">
    </div>
  </div>
</div>
    <br />
    <main>

    <div class="container">
  <div class="row">
    <div class="col">
      <div class="card mb-3">
       
  <img src="img/clinicaAme.jpg" class="card-img-top" alt="clinica">
  <div class="card-body">
    <h5 class="card-title">Clínica Las Américas cuenta con tres centros ambulatorios:</h5>
    <p class="card-text"><ol>
      <li>Centro de Mastología ubicado en el centro empresarial San Fernando Plaza en el sector conocido como Milla de Oro en El Poblado.</li>
      <li>Centro Médico Las Américas ubicado en el centro comercial City Plaza, en el municipio de Envigado </li>
      <li>AUNA Centro Médico Las Américas, ubicado en el centro comercial Arkadia, en el sector La Mota del barrio Belén.</li>
      </ol>
   </div>
   </div>
   </div>  
   </div>
   </div>
   <br />
       <div class="container">
  <div class="row">
    <div class="col">
      <div class="card mb-3" style="max-width: 540px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="img/familia.png" width="100" height="100" alt="familia">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Pacientes</h5>
        <p class="card-text">Para nosotros tu y familia son muy importantes por eso desde la seccion "pacientes" podras consultar tu estado de afiliacion o copagos pendientes.</p>
      </div>
    </div>
  </div>
</div>
    </div>
    <div class="col">
      <div class="card mb-3" style="max-width: 540px;">
  <div class="row g-0">
    <div class="col-md-4">
     <a href="Citas.aspx"> <img src="img/programar.png" width="100" height="100" alt="cita"></a>
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Citas</h5>
        <p class="card-text">Aqui Ingresando tu ID como paciente podras, pedir citas o cancelarlas, para ingresar a ello da click en la imagen o accede en la seccion de arriba "Citas".</p>
      </div>
    </div>
  </div>
</div>
    </div>
    <div class="col">
      <div class="card mb-3" style="max-width: 540px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="img/doctor.png" width="100" height="100" alt="medico">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Medicos y personal</h5>
        <p class="card-text">Si trabajas en nuestra institucion aqui podras consultar tu horario, citas asigandas o reuniones. Puedes ingresar con tu ID o documento personal.</p>
      </div>
    </div>
  </div>
</div>
    </div>
  </div>
</div>

    </main>

    <hr />
  <footer class="bg-light text-center text-lg-start">

  <div class="container p-4">
   
    <div class="row">
   
      <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
        <h5 class="text-uppercase">Contacto</h5>

        <p>
          <p>Estamos ubicados en Diagonal. 75B ##2A-80/140, Medellín, Antioquia</p>
          <p>Abierto las 24 horas del dia</p>
          <p>Nuestro numero de telefono es : 3421010 </p>

        </p>
      </div>
 
      <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
        <h5 class="text-uppercase">Mapa</h5>

        <p>
      <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15865.497562948647!2d-75.5953159!3d6.2142563!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x835a1abe1ee9af5c!2sCl%C3%ADnica%20Las%20Am%C3%A9ricas%20Auna!5e0!3m2!1ses-419!2sco!4v1620935693404!5m2!1ses-419!2sco" width="400" height="150" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </p>
      </div>
   
    </div>
   
  </div>


 
  <div class="text-center p-3" style="background-color: rgb(54 165 181);">
    © 2021 Copyright: Gustavo Rodriguez.
    <a class="text-dark" href="https://api.whatsapp.com/send?phone=573136821907" target="_blank"> Chat de Whatsapp</a>
  </div>

</footer>
</body>
</html>
