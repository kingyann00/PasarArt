using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB_Assignment
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetImageUrl();
            }
        }

        private void SetImageUrl()
        {
            // Create an instance of Random class
            Random _rand = new Random();
            // Generate a random number between 1 and 8
            int i = _rand.Next(1, 5);
            // Set ImageUrl using the generated random number
            Image1.ImageUrl = "~/HomepagePic/" + "Image" + i.ToString() + ".jpg";
            Image2.ImageUrl = "~/HomepagePic/" + "Img_941" + i.ToString() + ".png";
            Image3.ImageUrl = "~/HomepagePic/" + "Image2" + i.ToString() + ".jpg";
            Image4.ImageUrl = "~/homepagepic/" + "image1" + i.ToString() + ".jpg";
            Image5.ImageUrl = "~/homepagepic/" + "image3" + i.ToString() + ".jpg";
        }

        // This event is raised every one second as we have set
        // the interval to 1000 milliseconds
        protected void Timer1_Tick1(object sender, EventArgs e)
        {
            SetImageUrl();
        }
    }
}