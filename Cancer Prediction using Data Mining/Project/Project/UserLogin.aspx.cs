using Check;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        #region System Generated . . .
        Class1 c = new Class1();
        bool c1 = c.checkLoad("S477", con);
        if (!c1)
        {
            Response.Redirect("Login.aspx");
        }
        #endregion

        if (Session["Log"]=="Data")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Registration Successful. Please login to access the system.')", true);
            Session["Log"] = "";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            Label2.Visible = true;
            Label2.Text = "Please fill out this field";
        }
        else if (TextBox2.Text == "")
        {
            Label3.Visible = true;
            Label3.Text = "Please fill out this field";
        }
        else if (TextBox1.Text != "" && TextBox2.Text != "")
        {
            string str1 = "select id,password from Register where id='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
            SqlDataAdapter da1 = new SqlDataAdapter(str1, con);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                Session["Type"] = "User";
                Session["Uid"] = TextBox1.Text;
                Response.Redirect("Check.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Incorrect User Id or Password.')", true);
            }
        }
    }
}