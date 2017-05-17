using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1624955_WebDevelopment.HomePage
{
    public partial class Product : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=SQL2016.FSE.Network;Initial Catalog=db_1624955_co5027_asg;User ID=user_db_1624955_co5027_asg;Password=Che_19950105;MultipleActiveResultSets=True;Application Name=EntityFramework");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "Select * from Product INNER JOIN Image ON Product.ProdID = Image.ImgID";
            cmd.ExecuteNonQuery();

            DataTable dataTable = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dataTable);
            itemsrpt.DataSource = dataTable;
            itemsrpt.DataBind();
            con.Close();
        }
    }
}