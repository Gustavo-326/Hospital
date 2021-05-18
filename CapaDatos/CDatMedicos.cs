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
    public class CDatMedicos
    {
        CConexion oConexion = new CConexion();
        SqlCommand ocmd = new SqlCommand();

        public DataSet Consultar_Medico(CEntMedico omedico)
        {
            try
            {
                ocmd.Connection = oConexion.Conectar("BDHospital");
                ocmd.CommandType = CommandType.StoredProcedure;// Para llamar un procedimiento alcamenado
                ocmd.CommandText = "sp_consultar_medico";
                ocmd.Parameters.Add("@pid_medico",omedico.Id_medico);
                SqlDataAdapter da = new SqlDataAdapter(ocmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // Solo si existe un error
            }
        }

        public bool Guardar_Medico(CEntMedico oMedicos)
        {
            try
            {
                ocmd.Connection = oConexion.Conectar("BDHospital");
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.CommandText = "sp_guardar_medico";
                ocmd.Parameters.Add("@pid_medico", oMedicos.Id_medico);
                ocmd.Parameters.Add("@pnom_medico", oMedicos.Nom_medico);
                ocmd.Parameters.Add("@pespecialidad", oMedicos.Especialidad);
                ocmd.Parameters.Add("@ptel_medico", oMedicos.Tel_medico);
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
