using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WezwijPomoc.Services
{
    public class ZgloszenieService
    {
        public Instytucja GetInstytucja(string kod_pocztowy)
        {
            using (Entities db = new Entities())
            {
                var addresses = db.Adres.Select(a => a).Where(b => b.kod_pocztowy == kod_pocztowy);
                if (addresses.Count() < 1) return null;
                var address = addresses.First();
                String voivodeship = address.wojewodztwo.ToString();

                var unit = db.Instytucja.Select(a => a).Where(b => b.wojewodztwo == voivodeship && b.typ_instytucji==0).First();
                return unit;
                
            }
        }

        public bool CreateZgloszenie( String zakres_wsparcia, int priorytet,  String kod_pocztowy, String adres_zgloszenia, DateTime data_rozpoczecia, String imie, String nazwisko, String telefon, String mail)
        {
            Instytucja unit = GetInstytucja(kod_pocztowy);
            if (unit == null)
            {
                return false;
            }
            else
            {
                using (Entities db = new Entities())
                {
                    Osoba osoba = new Osoba();
                    osoba.imie = imie;
                    osoba.nazwisko = nazwisko;
                    osoba.telefon = telefon;
                    osoba.mail = mail;
                    db.Osoba.Add(osoba);

                    Zgloszenie zgloszenie = new Zgloszenie();
                    zgloszenie.zakres_wsparcia = zakres_wsparcia;
                    zgloszenie.priorytet = priorytet;                                            
                    zgloszenie.kod_pocztowy = kod_pocztowy;
                    zgloszenie.adres_zgloszenia = adres_zgloszenia;
                    zgloszenie.data_rozpoczecia = data_rozpoczecia;
                    zgloszenie.data_wygenerowania = DateTime.Now;
                    zgloszenie.id_osoby_do_kontaktu = osoba.id_osoby;
                    
                    zgloszenie.id_instytucji_przyjm = unit.id_instytucji;
                    zgloszenie.id_statusu = 1;
                    zgloszenie.id_instytucji_zgl = 0;
                    db.Zgloszenie.Add(zgloszenie);
                    return true;
                }
            }
        }
    }
}