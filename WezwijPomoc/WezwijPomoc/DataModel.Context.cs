﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WezwijPomoc
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Entities1 : DbContext
    {
        public Entities1()
            : base("name=Entities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Adres> Adres { get; set; }
        public virtual DbSet<Batalion> Batalion { get; set; }
        public virtual DbSet<Instytucja> Instytucja { get; set; }
        public virtual DbSet<Status> Status { get; set; }
        public virtual DbSet<Ticket> Ticket { get; set; }
        public virtual DbSet<Uzytkownik_batalion> Uzytkownik_batalion { get; set; }
        public virtual DbSet<Uzytkownik_instytucja> Uzytkownik_instytucja { get; set; }
        public virtual DbSet<Zgloszenie> Zgloszenie { get; set; }
    }
}