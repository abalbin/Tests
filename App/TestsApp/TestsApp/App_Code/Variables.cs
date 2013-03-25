using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestsApp.App_Code
{
    public class Variables
    {
        private HttpSessionStateBase session;
        public Variables(HttpSessionStateBase session)
        {
            this.session = session;
        }
        public int IdLoggedInUser
        {
            get
            {
                if (session["IdUsuario"] == null)
                {
                    session["IdUsuario"] = 0;
                    return Convert.ToInt32(session["IdUsuario"]);
                }
                else
                    return Convert.ToInt32(session["IdUsuario"]);
            }
            set
            {
                session["IdUsuario"] = value;
            }
        }
    }
}