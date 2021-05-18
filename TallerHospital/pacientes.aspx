<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pacientes.aspx.cs" Inherits="TallerHospital.pacientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <title>Pacientes</title>
    <style type="text/css">
        .auto-style1 {
            flex: 1 0 0%;
            text-align: center;
        }
        .auto-style2 {
            margin-bottom: .5rem;
            text-align: center;
        }
        .auto-style3 {
            flex: 0 0 auto;
            width: 33.3333333333%;
            text-align: center;
        }
    </style>
</head>
<body>
    <header>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.aspx">Clinica las Americas</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="pacientes.aspx">Pacientes</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Citas.aspx">Citas</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="medicos.aspx">Medicos</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

        </header>
   <br />
    <main>
 <center>
     <div class="container">
  <div class="row">
    <div class="col">
      <div class="card mb-3" style="max-width: 540px;">
  <div class="row g-0">
    <div class="auto-style3">
        <img src="img/doctorpa.jpg" width="180" height="300" />
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="auto-style2">Bienvenido Señor Usuario</h5>
        <p class="card-text" style="text-align: justify">Tu familia y tu son muy importantes para nostros, por eso hemos habilidado la seccion "Pacientes", aqui podras registrarte como usuario nuevo, pero primero verifica que el ID que quieras se encuentre disponible, cuando termines de ingresar dale click en el boton de abajo "Guardar Datos", asi quedaras registrado en nuestra base de datos, y sera mucho mas facil para nosotros tener control de tus citas .</p>
      </div>
    </div>
  </div>
</div>
    </div>   
  </div>
</div>
    </center>  
    <br />
        <div class="container">
  <div class="row">
    <div class="auto-style1">
     ID del Paciente..<asp:Label ID="lblPacientes" runat="server"></asp:Label>
        <br />
&nbsp;<asp:TextBox ID="txtId_paciente" runat="server" CssClass="offset-sm-0"></asp:TextBox>
        <asp:Button type="button" class="btn btn-primary" ID="btnConsultarPaciente" runat="server" Text="Consultar" OnClick="btnConsultarPaciente_Click" />
    </div>
    <div class="auto-style1">
        
        Tipo de Documento<br />
        <asp:TextBox ID="txttip_doc" runat="server"></asp:TextBox>
    </div>
      <br />
    <div class="auto-style1">
        Nombre del Paciente<br />
        <asp:TextBox ID="txtnom_paciente" runat="server"></asp:TextBox>
        <br />
        
    </div>
  </div>
</div>
    <br />
    <div class="container">
  <div class="row">
    <div class="auto-style1">
        Direccion del Paciente<br />
        
        <asp:TextBox ID="txtdir_paciente" runat="server"></asp:TextBox>
    </div>
      <br />
    <div class="auto-style1">
        Telefono del Paciente
        <br />
        <asp:TextBox ID="txttel_paciente" runat="server"></asp:TextBox>
    </div>
      <br />
    <div class="auto-style1">
        Celular Del Paciente<br />
        <asp:TextBox ID="txtcel_paciente" runat="server"></asp:TextBox>
    </div>
  </div>
</div>
    <br />
    <div class="container">
  <div class="row">
    <div class="auto-style1">
        ¿Se encuentra Activo?<br />
        <asp:TextBox ID="txtactivo" runat="server"></asp:TextBox>
    </div>
      </div>
        </div>
    <br />
    <div class="container">
  <div class="row">
    <div class="auto-style1">
      
        <asp:Button type="button" class="btn btn-success" ID="btnGuardar" runat="server" OnClick="btnGuardar_Click" Text="Guardar Datos" />
      
    </div>
    <div class="auto-style1">
      &nbsp;<asp:Button type="button" class="btn btn-danger" ID="btnNuevo" runat="server" OnClick="btnNuevo_Click" Text="Borrar Datos" />
    </div>
  </div>
</div>


    
     </form>
    </main>
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
