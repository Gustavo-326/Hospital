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
    public class CRNegPacientes
    {
        CDatPacientes odatPacientes = new CDatPacientes();
        
        public DataSet Consultar_Paciente(CEntPaciente oEntPacientes)
        {
            return odatPacientes.Consultar_Paciente(oEntPacientes);
        }

        public bool Guardar_Paciente(CEntPaciente oEntPacientes)
        {
            return odatPacientes.Guardar_Pacientes(oEntPacientes);
        }
    }
}
