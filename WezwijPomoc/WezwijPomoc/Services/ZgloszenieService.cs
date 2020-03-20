using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;

namespace WezwijPomoc.Services
{
    public class ZgloszenieService
    {
        public Instytucja GetInstytucja(string kod_pocztowy)
        {
            using (Entities1 db = new Entities1())
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
                using (Entities1 db = new Entities1())
                {
                    Osoba osoba = new Osoba();
                    DefaultValidationService validationService = new DefaultValidationService();
                    
                    validationService.ValidateWords(imie);
                    osoba.imie = imie;

                    validationService.ValidateWords(nazwisko);
                    osoba.nazwisko = nazwisko;

                    validationService.ValidatePhoneNumber(telefon);
                    osoba.telefon = telefon;

                    validationService.ValidateEmail(mail);
                    osoba.mail = mail;

                    db.Osoba.Add(osoba);

                    Zgloszenie zgloszenie = new Zgloszenie();

                    validationService.ValidateSentence(zakres_wsparcia);
                    zgloszenie.zakres_wsparcia = zakres_wsparcia;

                    validationService.ValidatePriority(priorytet);
                    zgloszenie.priorytet = priorytet;

                    validationService.ValidatePostCode(kod_pocztowy);
                    zgloszenie.kod_pocztowy = kod_pocztowy;

                    validationService.ValidateAddress(adres_zgloszenia);
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