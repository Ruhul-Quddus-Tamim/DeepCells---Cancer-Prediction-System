using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class AddTrainingData : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Add"] == "Data")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Training Data Added...')", true);
            Session["Add"] = "";
        }
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

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string val = DropDownList1.Text;
        if (val != "--Select--")
        {
            LabelErr.Visible = false;
        }
        else
        { 
            LabelErr.Visible = true;
        }
    }

    protected void btnAnalyse_Click(object sender, EventArgs e)
    {
        if (TextBox8.Text != "")
        {
            if (DropDownList1.Text != "--Select--")
            {
                if (TextBox7.Text != "")
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
                                                                                            string ins = "insert into trainingdata values('" + TextBox8.Text + "','" + TextBox7.Text + "','" + DropDownList1.SelectedValue.ToString() + "','" + DropDownList2.SelectedValue.ToString() + "','" + DropDownList3.SelectedValue.ToString() + "','" + DropDownList4.SelectedValue.ToString() + "','" + TextBox1.Text + "','" + DropDownList5.SelectedValue.ToString() + "','" + DropDownList6.SelectedValue.ToString() + "','" + DropDownList7.SelectedValue.ToString() + "','" + TextBox2.Text + "','" + DropDownList8.SelectedValue.ToString() + "','" + DropDownList14.SelectedValue.ToString() + "','" + TextBox4.Text + "','" + DropDownList9.SelectedValue.ToString() + "','" + TextBox5.Text + "','" + DropDownList10.SelectedValue.ToString() + "','" + DropDownList11.SelectedValue.ToString() + "','" + DropDownList12.SelectedValue.ToString() + "','" + DropDownList13.SelectedValue.ToString() + "','" + TextBox6.Text + "')";
                                                                                            SqlCommand cmd = new SqlCommand(ins, con);
                                                                                            con.Open();
                                                                                            cmd.ExecuteNonQuery();
                                                                                            con.Close();
                                                                                            Session["Add"] = "Data";
                                                                                            Response.Redirect("AddTrainingData.aspx");
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
}