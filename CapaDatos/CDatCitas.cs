using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using CapaEntidad;

namespace CapaDatos
{
    public class CDatCitas
    {
        CConexion oConexion = new CConexion();
        SqlCommand ocmd = new SqlCommand();

        public DataSet Consultar_Cita(CEntCitas ocitas)
        {
            try
            {
                ocmd.Connection = oConexion.Conectar("BDHospital");
                ocmd.CommandType = CommandType.StoredProcedure;// para llamar un procedimiento almacenado de la base de datos
                ocmd.CommandText = "sp_consultar_citas";
                ocmd.Parameters.Add("@pcod_cita", ocitas.Cod_cita);
                SqlDataAdapter da = new SqlDataAdapter(ocmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message);//Solo si existe un error            
            }
        }

        public bool Guardar_Citas(CEntCitas oCitas)
        {
            try
            {
                ocmd.Connection = oConexion.Conectar("BDHospital");
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.CommandText = "sp_guardar_citas";
                ocmd.Parameters.Add("@pcod_cita", oCitas.Cod_cita);
                ocmd.Parameters.Add("@pfecha", oCitas.Fecha);
                ocmd.Parameters.Add("@phora", oCitas.Hora);
                ocmd.Parameters.Add("@pId_paciente", oCitas.Id_paciente);
                ocmd.Parameters.Add("@pId_medico", oCitas.Id_medico);
                ocmd.Parameters.Add("@pvalor", oCitas.Valor);
                ocmd.Parameters.Add("@pdiagnostico,", oCitas.Diagnostico);
                ocmd.Parameters.Add("@pNom_acompanante", oCitas.Nom_acompanante);
                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message);
            }
        }


    }
}