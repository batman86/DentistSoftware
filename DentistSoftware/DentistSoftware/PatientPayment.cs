//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DentistSoftware
{
    using System;
    using System.Collections.Generic;
    
    public partial class PatientPayment
    {
        public int PatientPaymentID { get; set; }
        public Nullable<int> PatientID { get; set; }
        public Nullable<decimal> TotalPrice { get; set; }
        public Nullable<decimal> PaidAmount { get; set; }
        public Nullable<int> ClinicID { get; set; }
    }
}
