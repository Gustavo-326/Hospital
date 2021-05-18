using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;

namespace CapaDatos
{
    class CConexion
    {
        //Crear un metodo para abrir la base de datos
        public SqlConnection Conectar(String Cnx)
        {
            try 
            {
                SqlConnection oConectar = new SqlConnection(ConfigurationSettings.AppSettings[Cnx].ToString());
                oConectar.Open();//Abrir la conexion a la base de datos
                return oConectar;
            }
            catch(Exception err)
            {
                throw new Exception(err.Message);// Se activa solo si hay un error
            }
        }
    }
}
