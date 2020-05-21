using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace RegistrationSQLServer2
{
    public partial class ListUserInformation : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void gvListUserInformation_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}