using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Data.Sql;

namespace _1624955_WebDevelopment.HomePage
{
    public partial class UploadPicture : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            string prodId = Request.QueryString["Id"];
            //get the extension of our image file
            string extension = (System.IO.Path.GetExtension(FileUpload1.FileName).ToLower());
            //check the extension is valid
            if (extension == ".jpg" || extension == ".jpeg" || extension == ".png" || extension == ".gif")
            {
                //load the image in memory so we can determine it's dimensions
                System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
                int width = img.Width;
                int height = img.Height;    
                //save the image data
                db_1624955_co5027_asgEntities db = new db_1624955_co5027_asgEntities();
                Image imageData = new Image();
                imageData.ImgAlternatetext = txtAlternateText.Text;
                imageData.ImgWidth = width;
                imageData.ImgHeight = height;
                imageData.ImgExtension = extension;
                imageData.ImgName = prodId;
                db.Images.Add(imageData);
                db.SaveChanges();
                GridView1.DataBind();
                //assemble the filename
                string filename = imageData.ImgID.ToString() + extension;

                //save the image file (we could have alternatively saved the posted file,
                //but this would save any modifications we may have made to the image)
                img.Save(Server.MapPath("~/images/" + filename));
                //inform the user
                litResult.Text = "Your file was uploaded as " + filename + " in the images folder";
            }
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            GridView1.DataBind();
            litResult.Text = "";
        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            try
            {
                string idString = Request.QueryString["Id"];
                int idint = int.Parse(idString);

                db_1624955_co5027_asgEntities db = new db_1624955_co5027_asgEntities();
                var imgdata = db.Images.Single(p => p.ImgID == idint);
                string imgid = imgdata.ImgExtension;
                string productId = Request.QueryString["Id"];

                //creates filename using query string

                string filename = idString + imgid;

                //will be missing alternate text and dimensions
                Image1.ImageUrl = "~/prodImg/" + filename;
                Image1.Visible = true;
            }
            catch
            {
                litResult.Text = "Image not found";
            }
        }
    }
}