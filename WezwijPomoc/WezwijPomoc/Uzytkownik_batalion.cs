//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Uzytkownik_batalion
    {
        public string login { get; set; }
        public string imie { get; set; }
        public string nazwisko { get; set; }
        public string numer_telefonu { get; set; }
        public int id_batalionu { get; set; }
        public string haslo { get; set; }
    
        public virtual Batalion Batalion { get; set; }
    }
}