//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DentistSoftware.Domain
{
    using System;
    using System.Collections.Generic;
    
    public partial class Prescription
    {
        public int PrescriptionID { get; set; }
        public string Notice { get; set; }
        public Nullable<int> MedicineID { get; set; }
        public Nullable<int> PatientID { get; set; }
        public Nullable<int> AppointmentID { get; set; }
    }
}
