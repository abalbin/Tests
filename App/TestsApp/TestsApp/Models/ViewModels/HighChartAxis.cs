using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestsApp.Models.ViewModels
{
    public class HighChartAxis
    {
        public List<string> categories { get; set; }
        public int min { get; set; }
        public HighChartTitle title { get; set; }
    }
}