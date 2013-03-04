using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace TestsApp.App_Code
{
    public class Helper
    {
        public string ReturnTextDifferenceNow(DateTime dt)
        {
            string texto = "Creado hace ";
            int diferenciaDias = DaysBetween(dt, DateTime.Now);
            if (diferenciaDias == 0)
            {
                int diferenciaHoras = HoursBetween(dt, DateTime.Now);
                if (diferenciaHoras == 0)
                {
                    int diferenciaMinutos = MinutesBetween(dt, DateTime.Now);
                    texto += string.Format("{0} minuto{1}", diferenciaMinutos.ToString(), diferenciaMinutos <= 1 ? string.Empty : "s");
                }
                else
                    texto += string.Format("{0} hora{1}", diferenciaHoras.ToString(), diferenciaHoras <= 1 ? string.Empty : "s");
            }
            else
                texto += string.Format("{0} día{1}", diferenciaDias.ToString(), diferenciaDias <= 1 ? string.Empty : "s");

            return texto;
        }

        public int DaysBetween(DateTime d1, DateTime d2)
        {
            TimeSpan span = d2.Subtract(d1);
            return (int)span.TotalDays;
        }

        public int HoursBetween(DateTime d1, DateTime d2)
        {
            TimeSpan span = d2.Subtract(d1);
            return (int)span.TotalHours;
        }

        public int MinutesBetween(DateTime d1, DateTime d2)
        {
            TimeSpan span = d2.Subtract(d1);
            return (int)span.TotalMinutes;
        }

        public string ExtractNumberOfString(string str)
        {
            return Regex.Match(str, @"\d+").Value;
        }

        public int GetOrderNumberEditorFor(string str)
        {
            str = ExtractNumberOfString(str);
            int i = Convert.ToInt32(str);
            return i + 1;
        }
    }
}