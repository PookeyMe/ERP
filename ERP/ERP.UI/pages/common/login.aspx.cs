using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ERP.UI.pages.common
{
    public partial class login : System.Web.UI.Page
    {

        string code = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.Clear();
                Request.Cookies.Clear();
            }
        }

        protected void btnLogin_Click(object sender, ImageClickEventArgs e)
        {


        }
    }
}