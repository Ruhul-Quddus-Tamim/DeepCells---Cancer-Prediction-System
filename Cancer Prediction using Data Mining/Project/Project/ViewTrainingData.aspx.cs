using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class ViewTrainingData : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "select Dname,Age,Gender,ChestPain,BloodSugar,Restecg,Exang,Slope,CA,Thal,BloodPressure,Cholesterol,Thalach,Oldpeak from TrainingData";
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            Label1.Text = "Currently, No Training Data Found...";
        }
    }
}