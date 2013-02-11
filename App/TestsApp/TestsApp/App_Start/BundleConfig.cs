using System.Web;
using System.Web.Optimization;

namespace TestsApp
{
    public class BundleConfig
    {
        // For more information on Bundling, visit http://go.microsoft.com/fwlink/?LinkId=254725
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Content/javascripts/jquery*"));
           
            bundles.Add(new ScriptBundle("~/bundles/app").Include(
                        "~/Content/javascripts/application.js"));
            bundles.Add(new ScriptBundle("~/bundles/moo").Include(
                        "~/Content/javascripts/mootools-core-1.3-full-nocompat.js",
                        "~/Content/javascripts/mootools-more-1.3.0.1.js"));
            bundles.Add(new ScriptBundle("~/bundles/custom").Include(
                        "~/Content/javascripts/application.custom.js")); 
            bundles.Add(new ScriptBundle("~/bundles/meio").Include(
                        "~/Content/javascripts/meio/Meio.Mask.js",                        
                        "~/Content/javascripts/meio/Meio.Mask.Fixed.js",
                        "~/Content/javascripts/meio/Meio.Mask.Reverse.js",
                        "~/Content/javascripts/meio/Meio.Mask.Repeat.js",                        
                        "~/Content/javascripts/meio/Meio.Mask.Reverse.js",
                        "~/Content/javascripts/meio/Meio.Mask.Regexp.js",
                        "~/Content/javascripts/meio/Meio.Mask.Extras.js"
                        ));
            bundles.Add(new ScriptBundle("~/bundles/editable").Include(
                        "~/Content/javascripts/jquery.editable-1.0.1.js"));
            bundles.Add(new ScriptBundle("~/bundles/custom_editable").Include(
                        "~/Content/javascripts/editable.custom.js"));
            
            
            bundles.Add(new StyleBundle("~/Content/css").Include("~/Content/stylesheets/application.css"));

            bundles.Add(new StyleBundle("~/Content/themes/base/css").Include(
                        "~/Content/themes/base/jquery.ui.core.css",
                        "~/Content/themes/base/jquery.ui.resizable.css",
                        "~/Content/themes/base/jquery.ui.selectable.css",
                        "~/Content/themes/base/jquery.ui.accordion.css",
                        "~/Content/themes/base/jquery.ui.autocomplete.css",
                        "~/Content/themes/base/jquery.ui.button.css",
                        "~/Content/themes/base/jquery.ui.dialog.css",
                        "~/Content/themes/base/jquery.ui.slider.css",
                        "~/Content/themes/base/jquery.ui.tabs.css",
                        "~/Content/themes/base/jquery.ui.datepicker.css",
                        "~/Content/themes/base/jquery.ui.progressbar.css",
                        "~/Content/themes/base/jquery.ui.theme.css"));
        }
    }
}