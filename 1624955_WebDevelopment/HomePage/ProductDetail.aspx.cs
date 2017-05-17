using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1624955_WebDevelopment.HomePage
{
    public partial class ProductDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string getid = Request.QueryString["Id"];
            int getidint = int.Parse(getid);
         

            //get product detail data from the database
            db_1624955_co5027_asgEntities db = new db_1624955_co5027_asgEntities();
            var Product = db.Products.Single(p => p.ProdID == getidint);
            string ProdName = Product.ProdName;
           string ProductDetail = Product.PriceDetail;
            var ProdPrice = Product.ProdPrice;
            string strproductPrice = Convert.ToString(ProdPrice);
            var prodQty = Product.ProdQuantity;
            int productQTY = Convert.ToInt32(prodQty);
            string stockAvailable;
            if (productQTY > 0)
            {
                stockAvailable = "In stock";
            }
            else
            {
                stockAvailable = "Out of stock";
            }
            //put product data retrieved into the webpage
            Prodname.Text = ProdName;
            Proddesctxt.Text = ProductDetail;
            Prodpricetxt.Text = strproductPrice;
            quantity.Text = stockAvailable;
             
        }
    }
}