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
    public class CRNegMedicos
    {
        CDatMedicos odatMedicos = new CDatMedicos();

        public DataSet Consultar_Medico(CEntMedico oEntMedicos)
        {
            return odatMedicos.Consultar_Medico(oEntMedicos);
        }
        public bool Guardar_Medico(CEntMedico oEntMedicos)
        {
            return odatMedicos.Guardar_Medico(oEntMedicos);
        }
    }
}
