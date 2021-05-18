<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Citas.aspx.cs" Inherits="TallerHospital.Citas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/estilos.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            flex: 1 0 0%;
            text-align: center;
        }
    </style>
</head>
<body>
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
          <a class="nav-link active" aria-current="page" href="#">Citas</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="medicos.aspx">Medicos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="pacientes.aspx">Pacientes</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
        <br />
            <h1 class="text-center">Agenda tu Cita<img src="img/programar.png" width="100" height="100" /></h1>
            <p class="auto-style4">
            </p>
        <br />
        <div class="container">
  <div class="row">
    <div class="auto-style1">
     Ingresa el codigo de la cita 
        ...&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;<asp:Label ID="lblCita" runat="server"></asp:Label>
        <br/>
         <asp:TextBox ID="txtcod_cita" runat="server"></asp:TextBox>
        <asp:Button type="button" class="btn btn-primary" ID="btnConsultarCita" runat="server" Text="Consultar" OnClick="btnConsultarCita_Click1" />
        <br />
    </div>
    <div class="auto-style1">
        Fecha<br />
&nbsp;<asp:TextBox ID="txtfecha" runat="server"></asp:TextBox>
    </div>
    <div class="auto-style1">
        Hora<br />
&nbsp;<asp:TextBox ID="txthora" runat="server"></asp:TextBox>
    </div>
  </div>
</div>
        <br/>
        <br/>
        <br/>
        <div class="container">
  <div class="row">
    <div class="auto-style1">
        Ingresa el ID del Paciente&nbsp;
        <br/>
        <asp:TextBox ID="txtId_paciente" runat="server"></asp:TextBox>
    </div>
    <div class="auto-style1">
        Diagnostico&nbsp;
        <br/>
&nbsp;<asp:TextBox ID="txtdiagnostico" runat="server"></asp:TextBox>
    </div>
    <div class="auto-style1">
        Nombre del Acompañante
        <br/>
        <asp:TextBox ID="txtnom_acompanante" runat="server"></asp:TextBox>
    </div>
  </div>
</div>
        <br/>
        <br/>
        <br/>
        <div class="container">
  <div class="row">
    <div class="auto-style1">
      ID del Medico
        <br />
        <asp:TextBox ID="txtId_medico" runat="server"></asp:TextBox>
    </div>
    <div class="auto-style1">
      Valor de la Consulta
        <br />
        <asp:TextBox ID="txtvalor" runat="server"></asp:TextBox>
    </div>
    <div class="auto-style1">
      ¿Se encuentra Activo?
        <br />
        <asp:TextBox ID="txtactivo" runat="server"></asp:TextBox>
    </div>
  </div>
</div>
        <br />
        <br />
        <div class="container">
  <div class="row">
    <div class="auto-style1">
      &nbsp;<asp:Button type="button" class="btn btn-success" ID="btnGuardar"  runat="server" Text="Guardar Cita" OnClick="btnGuardar_Click" />
    </div>
    <div class="auto-style1">
      &nbsp;<asp:Button type="button" class="btn btn-danger" ID="btnNuevo" runat="server" Text="Borrar Datos" OnClick="btnNuevo_Click1" />
    </div>
  </div>
</div>
            

    </form>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
</body>
</html>
