using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace WEB_Assignment
{


    public partial class UpdateArtWork : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["MyAssignmentDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                lblMessage.Visible = false;
                HyperLink1.Visible = false;

            }
        }

        public string generateID()
        {
            SqlConnection con = new SqlConnection(strCon);
            decimal finalNumber;

            con.Open();
            SqlCommand sql = new SqlCommand("Select * from artgallery order by imageid desc", con);
            SqlDataAdapter sda = new SqlDataAdapter(sql);
            DataTable dt = new DataTable();
            sda.Fill(dt);


            string idNumber = dt.Rows[0][0].ToString();
            idNumber = idNumber.Substring(1);
            finalNumber = Convert.ToDecimal(idNumber);
            finalNumber++;
            string strGenerate = "A" + finalNumber.ToString();


            con.Close();

            return strGenerate;
        }


        protected void Completbtn_Click(object sender, EventArgs e)
        {

            string id = generateID();

            if(FileImgsave.PostedFile != null)
            {

                string imgfile = Path.GetFileName(FileImgsave.PostedFile.FileName);
                FileImgsave.SaveAs(Server.MapPath("ArtworkImage/") + imgfile);
                string cs = ConfigurationManager.ConnectionStrings["MyAssignmentDB"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {

                    con.Open();
                    SqlCommand sql = new SqlCommand("insert into artgallery ([imageid],[Artworkpath],[artworkquantity],[artworkprice],[description],[artworkname],[artistname],[uploadDate])" +
                        "values('" + id + "','" + ("ArtworkImage/"+imgfile) + "', '" + quantity.Text + "','" + price.Text + "', '" + desc.Text + "', '" + artworkName.Text + "', '" + artworkName.Text + "', '" + DateTime.Now.ToString() + "')", con);

                    sql.ExecuteNonQuery();
                    con.Close();

                    lblMessage.Visible = true;
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    lblMessage.Text = "Upload Successful";
                    HyperLink1.Visible = true;

                    HyperLink1.NavigateUrl = "~/WebForm1.aspx?ImageId=" + generateID();


                }
            }
            else
            {
                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Image file is required!!!!!";
                HyperLink1.Visible = false;
            }    
        }
    }

}

