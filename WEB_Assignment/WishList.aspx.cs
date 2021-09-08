using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace WEB_Assignment
{
    public partial class Wish_List : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["MyAssignmentDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DataSet ds = GetData();

                Repeater1.DataSource = ds;
                Repeater1.DataBind();
            }
        }
        private DataSet GetData()
        {
            var user = Membership.GetUser();
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("Select * from wishlist where username ='" + user + "'", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }
    }
   
}