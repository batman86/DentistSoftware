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
    
    public partial class suppcontact
    {
        public int Id { get; set; }
        public Nullable<int> SuppId { get; set; }
        public string ContactName { get; set; }
        public string ContactTitel { get; set; }
        public string ContactDep { get; set; }
        public string City { get; set; }
        public string PhoneExt { get; set; }
        public string Phone { get; set; }
        public string Mobile { get; set; }
        public string EMail { get; set; }
    
        public virtual supplier supplier { get; set; }
    }
}
