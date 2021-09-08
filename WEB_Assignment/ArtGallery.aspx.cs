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
  
    public partial class ArtGallery : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["MyAssignmentDB"].ConnectionString;

     

        protected void Page_Load(object sender, EventArgs e)
        {
			if (!IsPostBack) {
                DataSet ds = GetData();

                Repeater1.DataSource = ds;
                Repeater1.DataBind();
                
            }

          

        }
        private DataSet GetData()
        {
           
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("Select * from artGALLERY", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }
        protected void wishlist(object sender, EventArgs e)
        {
            var user = Membership.GetUser();



            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;

            string imageID = (item.FindControl("lblImageId") as Label).Text;
            string artworkname = (item.FindControl("lblArtworkName") as Label).Text;
            string artworkprice = (item.FindControl("lblArtWorkPrice") as Label).Text;
            string artworkpath = (item.FindControl("img") as Image).ImageUrl;
            string artworkdescription = (item.FindControl("lblDescription") as Label).Text;


            string id = generateID();
            string cs = ConfigurationManager.ConnectionStrings["MyAssignmentDB"].ConnectionString;
            if (check(sender) == false)
            {
                using (SqlConnection con = new SqlConnection(cs))

                {

                    con.Open();
                    SqlCommand sql = new SqlCommand("insert into wishlist ([wishlistid],[imageid],[artworkName],[artworkprice],[artworkpath],[username] where imageid NOT IN (SELECT imageid FROM wishlist))" +
                        "values('" + id + "','" + imageID + "', '" + artworkname + "','" + artworkprice + "', '" + artworkpath + "', '" + user + "')", con);

                    sql.ExecuteNonQuery();
                    con.Close();

                }
            }
            else
                Response.Redirect("Homepage.aspx");
        }

        public Boolean check(object sender ) {


            SqlConnection con = new SqlConnection(CS);
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;


            SqlCommand sql = new SqlCommand("select * from wishlist where  imageid = '" + (item.FindControl("lblImageId") as Label).Text + "' and username = '" + Membership.GetUser() + "'",con);

            sql.Connection = con;
            sql.Connection.Open();
            String body;
     
          
            SqlDataReader dr = sql.ExecuteReader();
            if (dr.HasRows)
            {
                return false;
            }
            else return true;





        }
       
    

        public string generateID()
        {
            SqlConnection con = new SqlConnection(CS);
            decimal finalNumber;

            con.Open();
            SqlCommand sql = new SqlCommand("Select * from wishlist order by wishlistid desc", con);
            SqlDataAdapter sda = new SqlDataAdapter(sql);
            DataTable dt = new DataTable();
            sda.Fill(dt);


            string idNumber = dt.Rows[0][0].ToString();
            idNumber = idNumber.Substring(1);
            finalNumber = Convert.ToDecimal(idNumber);
            finalNumber++;
            string strGenerate = "W" + finalNumber.ToString();


            con.Close();

            return strGenerate;
        }

		
	}
}