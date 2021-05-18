using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;
using CapaEntidad;
using System.Data;

namespace CapaRNegocio
{
    public class CRNegCitas
    {
        CDatCitas odatCitas = new CDatCitas();

        public DataSet Consultar_Cita(CEntCitas oEntCitas)
        {
            return odatCitas.Consultar_Cita(oEntCitas);
        }

        public bool Guardar_Cita(CEntCitas oEntCitas)
        {
            return odatCitas.Guardar_Citas(oEntCitas);
        }

        public bool Anular_Cita(CEntCitas oEntCitas)
        {
            return true; // pendiente
        }




    }

    

}


