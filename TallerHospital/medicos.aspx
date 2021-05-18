<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="medicos.aspx.cs" Inherits="TallerHospital.medicos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/estilos.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            flex: 1 0 0%;
            text-align: center;
        }
        .auto-style2 {
            color: #00CCFF;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.aspx">Clinica las Americas</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="medicos.aspx">Medicos</a>
        <a class="nav-link" href="Citas.aspx">Citas</a>
        <a class="nav-link" href="pacientes.aspx">Pacientes</a>
      </div>
    </div>
  </div>
</nav> 
        <header>
        <div class="text-center">
            <h1>Registro o Consulta de Medico</h1>
        </div>
        <div class="container">
            <div class="row">
                <div class="auto-style1">
                    <img src="img/medicos.jpg" />
    </div>
    <div class="auto-style1">
        ID del Medico<br />
        <asp:Label ID="lblMedicos" runat="server" CssClass="auto-style2"></asp:Label>
        <br />
 <asp:TextBox ID="txtid_medico" runat="server"></asp:TextBox>
        <br />
        <asp:Button type="button" class="btn btn-primary" ID="btnConsultar_Medico" runat="server" OnClick="btnConsultar_Medico_Click" Text="Consultar" />
        <br />
        <br />
        Nombre del medico<br />
        <asp:TextBox ID="txtnom_medico" runat="server"></asp:TextBox>
        <br />
        <br />
        Especialidad
        <br />
        <asp:TextBox ID="txtespecialidad" runat="server"></asp:TextBox>
        <br />
        <br />
        Telefono del medico<br />
        <asp:TextBox ID="txttel_medico" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button type="button" class="btn btn-danger" ID="btnNuevo" runat="server" OnClick="btnNuevo_Click" Text="Limpiar Datos" />
        <asp:Button type="button" class="btn btn-success" ID="btnGuardar" runat="server" OnClick="btnGuardar_Click" Text="Guardar Datos" />
    </div>
  </div>

       </header>
    </form>
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
      
        <h5 class="text-uppercase">Ubicacion</h5>

        <p>
      <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15865.497562948647!2d-75.5953159!3d6.2142563!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x835a1abe1ee9af5c!2sCl%C3%ADnica%20Las%20Am%C3%A9ricas%20Auna!5e0!3m2!1ses-419!2sco!4v1620935693404!5m2!1ses-419!2sco" width="400" height="150" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </p>
      </div>
   
    </div>
   
  </div>


 
  <div class="text-center p-3" style="background-color: rgba(54 165 181);">
    © 2021 Copyright: Gustavo Rodriguez.
    <a class="text-dark" href="https://api.whatsapp.com/send?phone=573136821907" target="_blank"> Chat de Whatsapp</a>
  </div>

</footer>
</body>         
</html>
