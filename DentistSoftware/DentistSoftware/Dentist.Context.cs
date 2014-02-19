﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DentistEntities : DbContext
    {
        public DentistEntities()
            : base("name=DentistEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<ActivePatient> ActivePatients { get; set; }
        public virtual DbSet<Appointment> Appointments { get; set; }
        public virtual DbSet<Clinic> Clinics { get; set; }
        public virtual DbSet<CustomMaterial> CustomMaterials { get; set; }
        public virtual DbSet<Doctor> Doctors { get; set; }
        public virtual DbSet<ImageCategory> ImageCategories { get; set; }
        public virtual DbSet<Image> Images { get; set; }
        public virtual DbSet<Material> Materials { get; set; }
        public virtual DbSet<MaterialTreatment> MaterialTreatments { get; set; }
        public virtual DbSet<opperation> opperations { get; set; }
        public virtual DbSet<Patient> Patients { get; set; }
        public virtual DbSet<PatientHistory> PatientHistories { get; set; }
        public virtual DbSet<PatientPayment> PatientPayments { get; set; }
        public virtual DbSet<PaymentReceipt> PaymentReceipts { get; set; }
        public virtual DbSet<Prescription> Prescriptions { get; set; }
        public virtual DbSet<RecivingItem> RecivingItems { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<Secretary> Secretaries { get; set; }
        public virtual DbSet<Storage> Storages { get; set; }
        public virtual DbSet<suppcontact> suppcontacts { get; set; }
        public virtual DbSet<supplier> suppliers { get; set; }
        public virtual DbSet<Treatment> Treatments { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<Warehouse> Warehouses { get; set; }
    }
}
