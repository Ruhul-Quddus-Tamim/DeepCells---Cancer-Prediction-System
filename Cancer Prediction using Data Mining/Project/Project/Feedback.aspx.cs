using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Feedback : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Feed"] == "Data")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Feedback Submitted!')", true);
            TextBox2.Text = "";
            Session["Feed"] = "";
        }
        string uid = Session["Uid"].ToString();
        string str = "select name from register where id='" + uid + "'";
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if(ds.Tables[0].Rows.Count>0)
        {
            TextBox1.Text = ds.Tables[0].Rows[0][0].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string date = DateTime.Now.ToString("yyyy/MM/dd");
        string time = DateTime.Now.ToString("HH:mm");
        con.Open();
        string sql = "insert into Feedback values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + date + "','" + time + "')";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Session["Feed"] = "Data";
        Response.Redirect("Feedback.aspx");
    }
}