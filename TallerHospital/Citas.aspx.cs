using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CapaEntidad;
using CapaRNegocio;

namespace TallerHospital
{
    public partial class Citas : System.Web.UI.Page
    {
        CRNegCitas oCRNegCitas = new CRNegCitas();
        CEntCitas oEntCitas = new CEntCitas();

        public void LimpiarTexto()
        {
            txtcod_cita.Text = "";
            txtfecha.Text = "";
            txthora.Text = "";
            txtId_medico.Text = "";
            txtId_paciente.Text = "";
            txtnom_acompanante.Text = "";
            txtvalor.Text = "";
            txtdiagnostico.Text = "";
            txtactivo.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnNuevo_Click1(object sender, EventArgs e)
        {
            LimpiarTexto(); // Llamando el metodo

        }

        protected void btnGuardar_Click1(object sender, EventArgs e)
        {
            oEntCitas.Cod_cita = txtcod_cita.Text;
            oEntCitas.Fecha = Convert.ToDateTime(txtfecha.Text);
            oEntCitas.Hora = Convert.ToDateTime(txthora.Text);
            oEntCitas.Id_paciente = txtId_paciente.Text;
            oEntCitas.Id_medico = txtId_medico.Text;
            oEntCitas.Valor = Convert.ToInt32(txtvalor.Text);
            oEntCitas.Diagnostico = txtdiagnostico.Text;
            oEntCitas.Nom_acompanante = txtnom_acompanante.Text;

            if (oCRNegCitas.Guardar_Cita(oEntCitas))
            {
               lblCita.Text = "Registro Guardado";
            }

            else
            {
                lblCita.Text = "Error al guardar el registro..";
            }


        }

        protected void btnConsultarCita_Click1(object sender, EventArgs e)
        {
            if (txtcod_cita.Text == "")
            {
                lblCita.Text = "No has digitado Ningun Codigo de Cita...";
                txtcod_cita.Focus();
            }
            else
            {
                DataSet ds = new DataSet();
                oEntCitas.Cod_cita = txtcod_cita.Text;
                ds = oCRNegCitas.Consultar_Cita(oEntCitas);

                if (ds.Tables[0].Rows.Count == 0)
                {
                    lblCita.Text = "El codigo de la cita esta Disponible";
                    txtfecha.Focus();
                }
                else
                {
                    txtfecha.Text = ds.Tables[0].Rows[0]["fecha"].ToString();
                    txthora.Text = ds.Tables[0].Rows[0]["hora"].ToString();
                    txtId_paciente.Text = ds.Tables[0].Rows[0]["Id_paciente"].ToString();
                    txtId_medico.Text = ds.Tables[0].Rows[0]["Id_Medico"].ToString();
                    txtvalor.Text = ds.Tables[0].Rows[0]["valor"].ToString();
                    txtdiagnostico.Text = ds.Tables[0].Rows[0]["diagnostico"].ToString();
                    txtnom_acompanante.Text = ds.Tables[0].Rows[0]["nom_acompanante"].ToString();
                    txtactivo.Text = ds.Tables[0].Rows[0]["activo"].ToString();

                }

            }

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            oEntCitas.Cod_cita = txtcod_cita.Text;
            oEntCitas.Fecha = Convert.ToDateTime(txtfecha.Text);
            oEntCitas.Hora = Convert.ToDateTime(txthora.Text);
            oEntCitas.Id_paciente = txtId_paciente.Text;
            oEntCitas.Id_medico = txtId_medico.Text;
            oEntCitas.Valor = Convert.ToInt32(txtvalor.Text);
            //oEntCitas.Diagnostico = txtdiagnostico.Text;
            oEntCitas.Nom_acompanante = txtnom_acompanante.Text;

            if (oCRNegCitas.Guardar_Cita(oEntCitas))
            {
                lblCita.Text = "Registro Guardado";
            }

            else
            {
                lblCita.Text = "Error al guardar el registro..";
            }

        }
    }
}
