using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Check : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        LabelErr18.Visible = false;
        LabelErr.Visible = false;
        LabelErr19.Visible = false;
        LabelErr0.Visible = false;
        LabelErr1.Visible = false;
        LabelErr2.Visible = false;
        LabelErr3.Visible = false;
        LabelErr4.Visible = false;
        LabelErr5.Visible = false;
        LabelErr6.Visible = false;
        LabelErr7.Visible = false;
        LabelErr8.Visible = false;
        LabelErr9.Visible = false;
        LabelErr10.Visible = false;
        LabelErr11.Visible = false;
        LabelErr12.Visible = false;
        LabelErr13.Visible = false;
        LabelErr14.Visible = false;
        LabelErr15.Visible = false;
        LabelErr16.Visible = false;
        LabelErr17.Visible = false;
        LabelErr5.Visible = false;
        //string Uid = Session["Uid"].ToString();
        //string str = "select age,gender from register where id='" + Uid + "'";
        //SqlDataAdapter da = new SqlDataAdapter(str, con);
        //DataSet ds = new DataSet();
        //da.Fill(ds);
        //string age = ds.Tables[0].Rows[0][0].ToString();
        ////lblAge.Text = age;
        //string sex = ds.Tables[0].Rows[0][1].ToString();
        //if(sex=="Male")
        //{
        //    //lblSex.Text = "1";
        //}
        //else
        //{
        //    //lblSex.Text = "0";
        //}
        //Panel1.Visible = false;
    }

    protected void btnAnalyse_Click(object sender, EventArgs e)
    {
        if (TextBox8.Text != "")
        {
            if (DropDownList1.Text != "--Select--")
            {
                if (TextBox7.Text != "")
                {
                    if (DropDownList1.Text == "Female")
                    {
                        if (DropDownList2.Text != "--Select--")
                        {
                            if (DropDownList3.Text != "--Select--")
                            {
                                if (DropDownList4.Text != "--Select--")
                                {
                                    if (TextBox1.Text != "")
                                    {
                                        if (DropDownList5.Text != "--Select--")
                                        {
                                            if (DropDownList6.Text != "--Select--")
                                            {
                                                if (DropDownList7.Text != "--Select--")
                                                {
                                                    if (TextBox2.Text != "")
                                                    {
                                                        if (DropDownList8.Text != "--Select--")
                                                        {
                                                            if (DropDownList14.Text != "--Select--")
                                                            {
                                                                if (TextBox4.Text != "")
                                                                {
                                                                    if (DropDownList9.Text != "--Select--")
                                                                    {
                                                                        if (TextBox5.Text != "")
                                                                        {
                                                                            if (DropDownList10.Text != "--Select--")
                                                                            {
                                                                                if (DropDownList11.Text != "--Select--")
                                                                                {
                                                                                    if (DropDownList12.Text != "--Select--")
                                                                                    {
                                                                                        if (DropDownList13.Text != "--Select--")
                                                                                        {
                                                                                            if (TextBox6.Text != "")
                                                                                            {
                                                                                                Label1.Visible = true;
                                                                                                DataTable table = new DataTable();
                                                                                                table.Columns.Add("Name");
                                                                                                table.Columns.Add("Age", typeof(double));
                                                                                                table.Columns.Add("Gender", typeof(double));
                                                                                                table.Columns.Add("BreastSize", typeof(double));
                                                                                                table.Columns.Add("Irritation", typeof(double));
                                                                                                table.Columns.Add("BloodClot", typeof(double));
                                                                                                table.Columns.Add("Urination", typeof(double));
                                                                                                table.Columns.Add("ChestPain", typeof(double));
                                                                                                table.Columns.Add("CoughBlood", typeof(double));
                                                                                                table.Columns.Add("MouthPain", typeof(double));
                                                                                                table.Columns.Add("RWPatch", typeof(double));
                                                                                                table.Columns.Add("Chewing", typeof(double));
                                                                                                table.Columns.Add("Headache", typeof(double));
                                                                                                table.Columns.Add("Vomit", typeof(double));
                                                                                                table.Columns.Add("MemProblem", typeof(double));
                                                                                                table.Columns.Add("SkinPatch", typeof(double));
                                                                                                table.Columns.Add("PatchSize", typeof(double));
                                                                                                table.Columns.Add("HeartBurn", typeof(double));
                                                                                                table.Columns.Add("StomachBloat", typeof(double));
                                                                                                table.Columns.Add("ShoulderPain", typeof(double));
                                                                                                table.Columns.Add("WeightLoss", typeof(double));

                                                                                                string str = "select name,age,gender,breastsize,irritation,bloodclot,urination,chestpain,coughblood,mouthpain,rwpatch,chewing,headache,vomit,memproblem,skinpatch,patchsize,heartburn,stomachbloat,shoulderpain,weightloss from TrainingData";
                                                                                                SqlDataAdapter da = new SqlDataAdapter(str, con);
                                                                                                DataSet ds = new DataSet();
                                                                                                da.Fill(ds);
                                                                                                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                                                                                                {
                                                                                                    table.Rows.Add(ds.Tables[0].Rows[i][0].ToString(),
                                                                                                    Convert.ToDouble(ds.Tables[0].Rows[i][1].ToString()),
                                                                                                    Convert.ToDouble(ds.Tables[0].Rows[i][3].ToString()),
                                                                                                    Convert.ToDouble(ds.Tables[0].Rows[i][4].ToString()),
                                                                                                    Convert.ToDouble(ds.Tables[0].Rows[i][5].ToString()),
                                                                                                    Convert.ToDouble(ds.Tables[0].Rows[i][6].ToString()),
                                                                                                    Convert.ToDouble(ds.Tables[0].Rows[i][7].ToString()),
                                                                                                    Convert.ToDouble(ds.Tables[0].Rows[i][8].ToString()),
                                                                                                    Convert.ToDouble(ds.Tables[0].Rows[i][9].ToString()),
                                                                                                    Convert.ToDouble(ds.Tables[0].Rows[i][10].ToString()),
                                                                                                    Convert.ToDouble(ds.Tables[0].Rows[i][11].ToString()),
                                                                                                    Convert.ToDouble(ds.Tables[0].Rows[i][12].ToString()),
                                                                                                    Convert.ToDouble(ds.Tables[0].Rows[i][13].ToString()),
                                                                                                    Convert.ToDouble(ds.Tables[0].Rows[i][14].ToString()),
                                                                                                    Convert.ToDouble(ds.Tables[0].Rows[i][15].ToString()),
                                                                                                    Convert.ToDouble(ds.Tables[0].Rows[i][16].ToString()),
                                                                                                    Convert.ToDouble(ds.Tables[0].Rows[i][17].ToString()),
                                                                                                    Convert.ToDouble(ds.Tables[0].Rows[i][18].ToString()),
                                                                                                    Convert.ToDouble(ds.Tables[0].Rows[i][19].ToString()),
                                                                                                    Convert.ToDouble(ds.Tables[0].Rows[i][20].ToString()));
                                                                                                }

                                                                                                Classifier classifier = new Classifier();
                                                                                                classifier.TrainClassifier(table);
                                                                                                string ans = "";
                                                                                                try
                                                                                                {
                                                                                                    ans = classifier.Classify
                                                                                                        (new double[]
                                                                                                        {
                    Convert.ToDouble(TextBox7.Text),
                    Convert.ToDouble(DropDownList1.SelectedValue.ToString()),
                    Convert.ToDouble(DropDownList2.SelectedValue.ToString()),
                    Convert.ToDouble(DropDownList3.SelectedValue.ToString()),
                    Convert.ToDouble(DropDownList4.SelectedValue.ToString()),
                    Convert.ToDouble(TextBox1.Text),
                    Convert.ToDouble(DropDownList5.SelectedValue.ToString()),
                    Convert.ToDouble(DropDownList6.SelectedValue.ToString()),
                    Convert.ToDouble(DropDownList7.SelectedValue.ToString()),
                    Convert.ToDouble(TextBox2.Text),
                    Convert.ToDouble(DropDownList8.SelectedValue.ToString()),
                    Convert.ToDouble(DropDownList14.SelectedValue.ToString()),
                    Convert.ToDouble(TextBox4.Text),
                    Convert.ToDouble(DropDownList9.SelectedValue.ToString()),
                    Convert.ToDouble(TextBox5.Text),
                    Convert.ToDouble(DropDownList10.SelectedValue.ToString()),
                    Convert.ToDouble(DropDownList11.SelectedValue.ToString()),
                    Convert.ToDouble(DropDownList12.SelectedValue.ToString()),
                    Convert.ToDouble(DropDownList13.SelectedValue.ToString()),
                    Convert.ToDouble(TextBox6.Text),
                                                                                                        });
                                                                                                    Label2.Text = ans.ToString();
                                                                                                    Panel1.Visible = true;
                                                                                                }
                                                                                                catch (Exception ep)
                                                                                                {
                                                                                                    ans = ep.ToString();
                                                                                                    
                                                                                                    Label2.Text = ans.ToString();
                                                                                                    Panel1.Visible = true;
                                                                                                }
                                                                                                string ins = "insert into userdata values('" + TextBox8.Text + "','" + TextBox7.Text + "','" + DropDownList1.SelectedValue.ToString() + "','" + DropDownList2.SelectedValue.ToString() + "','" + DropDownList3.SelectedValue.ToString() + "','" + DropDownList4.SelectedValue.ToString() + "','" + TextBox1.Text + "','" + DropDownList5.SelectedValue.ToString() + "','" + DropDownList6.SelectedValue.ToString() + "','" + DropDownList7.SelectedValue.ToString() + "','" + TextBox2.Text + "','" + DropDownList8.SelectedValue.ToString() + "','" + DropDownList14.SelectedValue.ToString() + "','" + TextBox4.Text + "','" + DropDownList9.SelectedValue.ToString() + "','" + TextBox5.Text + "','" + DropDownList10.SelectedValue.ToString() + "','" + DropDownList11.SelectedValue.ToString() + "','" + DropDownList12.SelectedValue.ToString() + "','" + DropDownList13.SelectedValue.ToString() + "','" + TextBox6.Text + "','" + Label2.Text + "')";
                                                                                                SqlCommand cmd = new SqlCommand(ins, con);
                                                                                                con.Open();
                                                                                                cmd.ExecuteNonQuery();
                                                                                                con.Close();
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                LabelErr17.Visible = true;
                                                                                            }
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            LabelErr16.Visible = true;
                                                                                        }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        LabelErr15.Visible = true;
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    LabelErr14.Visible = true;
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                LabelErr13.Visible = true;
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            LabelErr12.Visible = true;
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        LabelErr11.Visible = true;
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    LabelErr10.Visible = true;
                                                                }
                                                            }
                                                            else
                                                            {
                                                                LabelErr9.Visible = true;
                                                            }
                                                        }
                                                        else
                                                        {
                                                            LabelErr8.Visible = true;
                                                        }
                                                    }
                                                    else
                                                    {
                                                        LabelErr7.Visible = true;
                                                    }
                                                }
                                                else
                                                {
                                                    LabelErr6.Visible = true;
                                                }
                                            }
                                            else
                                            {
                                                LabelErr5.Visible = true;
                                            }
                                        }
                                        else
                                        {
                                            LabelErr4.Visible = true;
                                        }
                                    }
                                    else
                                    {
                                        LabelErr3.Visible = true;
                                    }
                                }
                                else
                                {
                                    LabelErr2.Visible = true;
                                }
                            }
                            else
                            {
                                LabelErr1.Visible = true;
                            }
                        }
                        else
                        {
                            LabelErr0.Visible = true;
                        }
                    }
                    else
                    {
                        if (DropDownList4.Text != "--Select--")
                        {
                            if (TextBox1.Text != "")
                            {
                                if (DropDownList5.Text != "--Select--")
                                {
                                    if (DropDownList6.Text != "--Select--")
                                    {
                                        if (DropDownList7.Text != "--Select--")
                                        {
                                            if (TextBox2.Text != "")
                                            {
                                                if (DropDownList8.Text != "--Select--")
                                                {
                                                    if (DropDownList14.Text != "--Select--")
                                                    {
                                                        if (TextBox4.Text != "")
                                                        {
                                                            if (DropDownList9.Text != "--Select--")
                                                            {
                                                                if (TextBox5.Text != "")
                                                                {
                                                                    if (DropDownList10.Text != "--Select--")
                                                                    {
                                                                        if (DropDownList11.Text != "--Select--")
                                                                        {
                                                                            if (DropDownList12.Text != "--Select--")
                                                                            {
                                                                                if (DropDownList13.Text != "--Select--")
                                                                                {
                                                                                    if (TextBox6.Text != "")
                                                                                    {
                                                                                        Label1.Visible = true;
                                                                                        DataTable table = new DataTable();
                                                                                        table.Columns.Add("Name");
                                                                                        table.Columns.Add("Age", typeof(double));
                                                                                        table.Columns.Add("Gender", typeof(double));
                                                                                
                                                                                        table.Columns.Add("BloodClot", typeof(double));
                                                                                        table.Columns.Add("Urination", typeof(double));
                                                                                        table.Columns.Add("ChestPain", typeof(double));
                                                                                        table.Columns.Add("CoughBlood", typeof(double));
                                                                                        table.Columns.Add("MouthPain", typeof(double));
                                                                                        table.Columns.Add("RWPatch", typeof(double));
                                                                                        table.Columns.Add("Chewing", typeof(double));
                                                                                        table.Columns.Add("Headache", typeof(double));
                                                                                        table.Columns.Add("Vomit", typeof(double));
                                                                                        table.Columns.Add("MemProblem", typeof(double));
                                                                                        table.Columns.Add("SkinPatch", typeof(double));
                                                                                        table.Columns.Add("PatchSize", typeof(double));
                                                                                        table.Columns.Add("HeartBurn", typeof(double));
                                                                                        table.Columns.Add("StomachBloat", typeof(double));
                                                                                        table.Columns.Add("ShoulderPain", typeof(double));
                                                                                        table.Columns.Add("WeightLoss", typeof(double));

                                                                                        string str = "select name,age,gender,bloodclot,urination,chestpain,coughblood,mouthpain,rwpatch,chewing,headache,vomit,memproblem,skinpatch,patchsize,heartburn,stomachbloat,shoulderpain,weightloss from TrainingData";
                                                                                        SqlDataAdapter da = new SqlDataAdapter(str, con);
                                                                                        DataSet ds = new DataSet();
                                                                                        da.Fill(ds);
                                                                                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                                                                                        {
                                                                                            table.Rows.Add(ds.Tables[0].Rows[i][0].ToString(),
                                                                                            Convert.ToDouble(ds.Tables[0].Rows[i][1].ToString()),
                                                                                            Convert.ToDouble(ds.Tables[0].Rows[i][2].ToString()),
                                                                                            Convert.ToDouble(ds.Tables[0].Rows[i][3].ToString()),
                                                                                            Convert.ToDouble(ds.Tables[0].Rows[i][4].ToString()),
                                                                                            Convert.ToDouble(ds.Tables[0].Rows[i][5].ToString()),
                                                                                            Convert.ToDouble(ds.Tables[0].Rows[i][6].ToString()),
                                                                                            Convert.ToDouble(ds.Tables[0].Rows[i][7].ToString()),
                                                                                            Convert.ToDouble(ds.Tables[0].Rows[i][8].ToString()),
                                                                                            Convert.ToDouble(ds.Tables[0].Rows[i][9].ToString()),
                                                                                            Convert.ToDouble(ds.Tables[0].Rows[i][10].ToString()),
                                                                                            Convert.ToDouble(ds.Tables[0].Rows[i][11].ToString()),
                                                                                            Convert.ToDouble(ds.Tables[0].Rows[i][12].ToString()),
                                                                                            Convert.ToDouble(ds.Tables[0].Rows[i][13].ToString()),
                                                                                            Convert.ToDouble(ds.Tables[0].Rows[i][14].ToString()),
                                                                                            Convert.ToDouble(ds.Tables[0].Rows[i][15].ToString()),
                                                                                            Convert.ToDouble(ds.Tables[0].Rows[i][16].ToString()),
                                                                                            Convert.ToDouble(ds.Tables[0].Rows[i][17].ToString()),
                                                                                            Convert.ToDouble(ds.Tables[0].Rows[i][18].ToString()));
                                                                                        }

                                                                                        Classifier classifier = new Classifier();
                                                                                        classifier.TrainClassifier(table);
                                                                                        string ans = "";
                                                                                        try
                                                                                        {
                                                                                            ans = classifier.Classify
                                                                                                (new double[]
                                                                                                {
                    Convert.ToDouble(TextBox7.Text),
                    Convert.ToDouble(DropDownList1.SelectedValue.ToString()),
                    Convert.ToDouble(DropDownList4.SelectedValue.ToString()),
                    Convert.ToDouble(TextBox1.Text),
                    Convert.ToDouble(DropDownList5.SelectedValue.ToString()),
                    Convert.ToDouble(DropDownList6.SelectedValue.ToString()),
                    Convert.ToDouble(DropDownList7.SelectedValue.ToString()),
                    Convert.ToDouble(TextBox2.Text),
                    Convert.ToDouble(DropDownList8.SelectedValue.ToString()),
                    Convert.ToDouble(DropDownList14.SelectedValue.ToString()),
                    Convert.ToDouble(TextBox4.Text),
                    Convert.ToDouble(DropDownList9.SelectedValue.ToString()),
                    Convert.ToDouble(TextBox5.Text),
                    Convert.ToDouble(DropDownList10.SelectedValue.ToString()),
                    Convert.ToDouble(DropDownList11.SelectedValue.ToString()),
                    Convert.ToDouble(DropDownList12.SelectedValue.ToString()),
                    Convert.ToDouble(DropDownList13.SelectedValue.ToString()),
                    Convert.ToDouble(TextBox6.Text),
                                                                                                });
                                                                                            Label2.Text = ans.ToString();
                                                                                            Panel1.Visible = true;
                                                                                        }
                                                                                        catch (Exception ep)
                                                                                        {
                                                                                            ans = ep.ToString();
                                                                                            Label2.Text = ans.ToString();
                                                                                            Panel1.Visible = true;
                                                                                        }
                                                                                        string ins = "insert into userdata values('" + TextBox8.Text + "','" + TextBox7.Text + "','" + DropDownList1.SelectedValue.ToString() + "','0','0','"+DropDownList4.SelectedValue.ToString()+"','" + TextBox1.Text + "','" + DropDownList5.SelectedValue.ToString() + "','" + DropDownList6.SelectedValue.ToString() + "','" + DropDownList7.SelectedValue.ToString() + "','" + TextBox2.Text + "','" + DropDownList8.SelectedValue.ToString() + "','" + DropDownList14.SelectedValue.ToString() + "','" + TextBox4.Text + "','" + DropDownList9.SelectedValue.ToString() + "','" + TextBox5.Text + "','" + DropDownList10.SelectedValue.ToString() + "','" + DropDownList11.SelectedValue.ToString() + "','" + DropDownList12.SelectedValue.ToString() + "','" + DropDownList13.SelectedValue.ToString() + "','" + TextBox6.Text + "','" + Label2.Text + "')";
                                                                                        SqlCommand cmd = new SqlCommand(ins, con);
                                                                                        con.Open();
                                                                                        cmd.ExecuteNonQuery();
                                                                                        con.Close();
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        LabelErr17.Visible = true;
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    LabelErr16.Visible = true;
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                LabelErr15.Visible = true;
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            LabelErr14.Visible = true;
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        LabelErr13.Visible = true;
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    LabelErr12.Visible = true;
                                                                }
                                                            }
                                                            else
                                                            {
                                                                LabelErr11.Visible = true;
                                                            }
                                                        }
                                                        else
                                                        {
                                                            LabelErr10.Visible = true;
                                                        }
                                                    }
                                                    else
                                                    {
                                                        LabelErr9.Visible = true;
                                                    }
                                                }
                                                else
                                                {
                                                    LabelErr8.Visible = true;
                                                }
                                            }
                                            else
                                            {
                                                LabelErr7.Visible = true;
                                            }
                                        }
                                        else
                                        {
                                            LabelErr6.Visible = true;
                                        }
                                    }
                                    else
                                    {
                                        LabelErr5.Visible = true;
                                    }
                                }
                                else
                                {
                                    LabelErr4.Visible = true;
                                }
                            }
                            else
                            {
                                LabelErr3.Visible = true;
                            }
                        }
                        else
                        {
                            LabelErr2.Visible = true;
                        }

                    }
                }
                else
                {
                    LabelErr19.Visible = true;
                }
            }
            else
            {
                LabelErr.Visible = true;
            }
        }
        else
        {
            LabelErr18.Visible = true;
        }
       
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string val = DropDownList1.SelectedItem.Text;
        if(val!="--Select--")
        {
            LabelErr.Visible = false;
            {
                if(val=="Male")
                {
                    Panel2.Visible = false;
                    Panel3.Visible = true;
                    DropDownList2.SelectedValue = "0";
                    DropDownList3.SelectedValue = "0";
                }
                else if(val=="Female")
                {
                    Panel3.Visible = true;
                    Panel2.Visible = true;
                }
            }
        }
        else
        {
            Panel2.Visible = false;
            Panel3.Visible = false;
            LabelErr.Visible = true;
        }
    }
}