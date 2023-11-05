using System;
using System.Activities.Statements;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddNew : System.Web.UI.Page
{
    string uName;
    protected void Page_Load(object sender, EventArgs e)
    {
        MembershipUser currentUser = Membership.GetUser();
        uName = currentUser.UserName;

    }

    protected void cmdAdd_Click(object sender, EventArgs e)
    {
        if (imgUp.HasFile)
        {
            String imgName = imgUp.FileName;
            imgUp.SaveAs(Server.MapPath("~\\Images") + "/" + imgUp.FileName);

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);
            SqlCommand cmdAdd = new SqlCommand("Insert Into tblTourPackages " +
                "Values (@ptName, @typeId, @country, @city, @duration, @des, " +
                "@desUrl, @imgUrl, @inDate, @uName, @CatId)", conn);
            cmdAdd.Parameters.Add("@ptName", System.Data.SqlDbType.VarChar);
            cmdAdd.Parameters["@ptName"].Value = txtPackName.Text;
            cmdAdd.Parameters.Add("@typeId", System.Data.SqlDbType.Int);
            cmdAdd.Parameters["@typeId"].Value = tourType.SelectedValue.ToString();
            cmdAdd.Parameters.Add("@country", System.Data.SqlDbType.VarChar);
            cmdAdd.Parameters["@country"].Value = txtCountry.Text;
            cmdAdd.Parameters.Add("@city", System.Data.SqlDbType.VarChar);
            cmdAdd.Parameters["@city"].Value = txtCity.Text;
            cmdAdd.Parameters.Add("@duration", System.Data.SqlDbType.VarChar);
            cmdAdd.Parameters["@duration"].Value = txtDuration.Text;
            cmdAdd.Parameters.Add("@des", System.Data.SqlDbType.VarChar);
            cmdAdd.Parameters["@des"].Value = txtDes.Text;
            cmdAdd.Parameters.Add("@desUrl", System.Data.SqlDbType.VarChar);
            cmdAdd.Parameters["@desUrl"].Value = txtLink.Text;
            cmdAdd.Parameters.Add("@imgUrl", System.Data.SqlDbType.VarChar);
            cmdAdd.Parameters["@imgUrl"].Value = "Images/" + imgName;
            cmdAdd.Parameters.Add("@inDate", System.Data.SqlDbType.DateTime);
            cmdAdd.Parameters["@inDate"].Value = DateTime.Now;
            cmdAdd.Parameters.Add("@uName", System.Data.SqlDbType.VarChar);
            cmdAdd.Parameters["@uName"].Value = uName;
            cmdAdd.Parameters.Add("@CatId", System.Data.SqlDbType.Int);
            cmdAdd.Parameters["@CatId"].Value = category.SelectedValue.ToString();

            conn.Open();
            
            cmdAdd.ExecuteNonQuery();
            


            txtCity.Text = " ";
            txtCountry.Text = " ";
            txtPackName.Text = " ";
            txtDes.Text = " ";
            txtLink.Text = " ";
            txtDuration.Text = " ";
            


            conn.Close();
            // Insertion successful
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Record added successfully.');", true);
        }

    }

}