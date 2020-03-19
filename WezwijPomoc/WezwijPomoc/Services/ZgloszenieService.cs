using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WezwijPomoc.Services
{
    public class ZgloszenieService
    {
        public Batalion GetBatalion(string kod_pocztowy)
        {
            using (Entities1 db = new Entities1())
            {
                var addresses = db.Adres.Select(a => a).Where(b => b.kod_pocztowy == kod_pocztowy);
                if (addresses.Count() < 1) return null;
                var address = addresses.First();
                String batalionID = address.batalion_odpowiedzialny.ToString();
                int batalionIDInt = Int32.Parse(batalionID.ToString());
                var batalion = db.Batalion.Select(a => a).Where(b => b.id_batalionu == batalionIDInt).First();
                return batalion;
                
            }
        }

        public bool CreateZgloszenie( String pesel, String imie, String nr_telefonu, String kategoria_pomocy, String kod_pocztowy, String adres_zgloszenia)
        {
            Batalion batalion = GetBatalion(kod_pocztowy);
            if (batalion == null)
            {
                return false;
            }
            else
            {
                using (Entities1 db = new Entities1())
                {
                    Zgloszenie zgloszenie = new Zgloszenie();
                    zgloszenie.pesel = pesel;
                    zgloszenie.imie = imie;
                    zgloszenie.nr_telefonu = nr_telefonu;
                    zgloszenie.kategoria_pomocy = kategoria_pomocy;
                    zgloszenie.kod_pocztowy = kod_pocztowy;
                    zgloszenie.adres_zgloszenia = adres_zgloszenia;
                    zgloszenie.id_batalionu = batalion.id_batalionu;
                    zgloszenie.id_statusu = 1;
                    zgloszenie.id_instytucji = 0;
                    db.Zgloszenie.Add(zgloszenie);
                    return true;
                }
            }
        }
    }
}