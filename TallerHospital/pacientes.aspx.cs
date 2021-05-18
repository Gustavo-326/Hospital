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
    public partial class pacientes : System.Web.UI.Page
    {
        CRNegPacientes oCRNegPacientes = new CRNegPacientes();
        CEntPaciente oEntPacientes = new CEntPaciente();

        public void LimpiarTexto()
        {
            txtId_paciente.Text = "";
            txttip_doc.Text = "";
            txtnom_paciente.Text = "";
            txtdir_paciente.Text = "";
            txttel_paciente.Text = "";
            txtcel_paciente.Text = "";
            txtactivo.Text = "";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btnConsultarPaciente_Click(object sender, EventArgs e)
        {
            if (txtId_paciente.Text == "")
            {
                lblPacientes.Text = "No has digitado el ID del Paciente";
                txtId_paciente.Focus();
            }
            else
            {
                DataSet ds = new DataSet();
                oEntPacientes.Id_paciente1 = txtId_paciente.Text;
                ds = oCRNegPacientes.Consultar_Paciente(oEntPacientes);

                if (ds.Tables[0].Rows.Count==0)
                {
                    lblPacientes.Text = " El ID esta disponible";
                    txttip_doc.Focus();
                }
                else
                {
                    txttip_doc.Text = ds.Tables[0].Rows[0]["tip_doc"].ToString();
                    txtnom_paciente.Text = ds.Tables[0].Rows[0]["nom_paciente"].ToString();
                    txtdir_paciente.Text = ds.Tables[0].Rows[0]["dir_paciente"].ToString();
                    txttel_paciente.Text = ds.Tables[0].Rows[0]["tel_paciente"].ToString();
                    txtcel_paciente.Text = ds.Tables[0].Rows[0]["cel_paciente"].ToString();
                    txtactivo.Text = ds.Tables[0].Rows[0]["activo"].ToString();
                   
                }

            }

        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            LimpiarTexto();
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            oEntPacientes.Id_paciente1 = txtId_paciente.Text;
            oEntPacientes.Tip_doc = txttip_doc.Text;
            oEntPacientes.Nom_paciente = txtnom_paciente.Text;
            oEntPacientes.Dir_paciente = txtdir_paciente.Text;
            oEntPacientes.Tel_paciente = txttel_paciente.Text;
            oEntPacientes.Cel_paciente = txtcel_paciente.Text;

            if(oCRNegPacientes.Guardar_Paciente(oEntPacientes))
            {
                lblPacientes.Text = "Paciente Guardado con Exito";
            }
            else
            {
                lblPacientes.Text = "Error al registrar, Intentelo Nuevamente";
            }
        
        }
    }
}