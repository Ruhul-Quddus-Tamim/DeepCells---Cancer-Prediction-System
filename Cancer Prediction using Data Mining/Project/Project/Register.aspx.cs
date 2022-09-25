using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string str = "select top 1 id from Register order by id desc";
            SqlDataAdapter da = new SqlDataAdapter(str, con);
            DataSet ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count == 0)
            {
                Label1.Text = "1001";
            }
            else
            {
                string s = ds.Tables[0].Rows[0][0].ToString();
                int s1 = Convert.ToInt32(s) + 1;
                Label1.Text = s1.ToString();
            }
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        using (con)
        {
            con.Open();
            string ins = "insert into Register values('" + Label1.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','"+RadioButtonList1.SelectedItem.Text+"','" + TextBox6.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();

            Session["Log"] = "Data";
            Response.Redirect("UserLogin.aspx");
        }
    }
}