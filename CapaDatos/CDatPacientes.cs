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
    public class CDatPacientes
    {
        CConexion oConexion = new CConexion();
        SqlCommand ocmd = new SqlCommand();

       public DataSet Consultar_Paciente(CEntPaciente opaciente)
        {
            try
            {
                ocmd.Connection = oConexion.Conectar("BDHospital");
                ocmd.CommandType = CommandType.StoredProcedure;// para llamar un procedimiento
                ocmd.CommandText = "sp_consultar_paciente";
                ocmd.Parameters.Add("@pId_paciente", opaciente.Id_paciente1);
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

        public bool Guardar_Pacientes(CEntPaciente oPacientes)
        {
            try
            {
                ocmd.Connection = oConexion.Conectar("BDHospital");
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.CommandText = "sp_guardar_paciente";
                ocmd.Parameters.Add("@pId_paciente", oPacientes.Id_paciente1);
                ocmd.Parameters.Add("@ptip_doc", oPacientes.Tip_doc);
                ocmd.Parameters.Add("@pnom_paciente", oPacientes.Nom_paciente);
                ocmd.Parameters.Add("@pdir_paciente", oPacientes.Dir_paciente);
                ocmd.Parameters.Add("@ptel_paciente", oPacientes.Tel_paciente);
                ocmd.Parameters.Add("@pcel_paciente", oPacientes.Cel_paciente);
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
