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
    public partial class medicos : System.Web.UI.Page
    {
        CRNegMedicos oCRNegMedicos = new CRNegMedicos();
        CEntMedico oEntMedicos = new CEntMedico();

        public void LimpiarTexto()
        {
            txtid_medico.Text = "";
            txtnom_medico.Text = "";
            txttel_medico.Text = "";
            txtespecialidad.Text = "";

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            LimpiarTexto();
        }

        protected void btnConsultar_Medico_Click(object sender, EventArgs e)
        {
            if (txtid_medico.Text=="")
            {
                lblMedicos.Text = "No has Digitado el ID del medico";
                txtid_medico.Focus();
            }
            else
            {
                DataSet ds = new DataSet();
                oEntMedicos.Id_medico = txtid_medico.Text;
                ds = oCRNegMedicos.Consultar_Medico(oEntMedicos);

                if(ds.Tables[0].Rows.Count==0)
                {
                    lblMedicos.Text = "El ID esta disponible";
                    txtnom_medico.Focus();
                }
                else
                {
                    txtnom_medico.Text = ds.Tables[0].Rows[0]["nom_medico"].ToString();
                    txtespecialidad.Text = ds.Tables[0].Rows[0]["especialidad"].ToString();
                    txttel_medico.Text = ds.Tables[0].Rows[0]["tel_medico"].ToString();
                }

            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            oEntMedicos.Id_medico = txtid_medico.Text;
            oEntMedicos.Nom_medico = txtnom_medico.Text;
            oEntMedicos.Especialidad = txtespecialidad.Text;
            oEntMedicos.Tel_medico = txttel_medico.Text;

            if(oCRNegMedicos.Guardar_Medico(oEntMedicos))
            {
                lblMedicos.Text = "Medico Guardardo con Exito";
            }
            else
            {
                lblMedicos.Text = " Error al registrar, Intentelo Nuevamente";
            }
        }
    }
}