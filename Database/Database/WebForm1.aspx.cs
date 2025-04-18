using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Database
{
	public partial class WebForm1 : System.Web.UI.Page
	{
		string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\admin\Desktop\Database Project\Database\Database\App_Data\Database1.mdf"";Integrated Security=True";

		protected void Page_Load(object sender, EventArgs e)
		{
            if (!IsPostBack)
            {
                GridView1.DataBind();
            }
		}

        protected void Button1_Click(object sender, EventArgs e)
        {
			using (SqlConnection conn = new SqlConnection(connStr))
			{
				string query = "INSERT INTO Customer (Account_Id ,Name, Age, Address, Email_Id, Account_Type, Contact_No) VALUES (@Account_Id ,@Name, @Age, @Address, @Email_Id, @Account_Type, @Contact_No)";
				SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Account_Id", int.Parse(TextBox1.Text));
                cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
				cmd.Parameters.AddWithValue("@Age", int.Parse(TextBox3.Text));
				cmd.Parameters.AddWithValue("@Address", TextBox4.Text);
				cmd.Parameters.AddWithValue("@Email_Id", TextBox5.Text);
				cmd.Parameters.AddWithValue("@Account_Type", DropDownList1.SelectedValue);
				cmd.Parameters.AddWithValue("@Contact_No", int.Parse(TextBox6.Text));
				conn.Open();
				cmd.ExecuteNonQuery();
				conn.Close();
			}
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "UPDATE Customer SET Name=@Name, Age=@Age, Address=@Address, Email_Id=@Email_Id, Account_Type=@Account_Type, Contact_No=@Contact_No WHERE Account_Id=@Account_Id";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Account_Id", int.Parse(TextBox1.Text));
                cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Age", int.Parse(TextBox3.Text));
                cmd.Parameters.AddWithValue("@Address", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Email_Id", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Account_Type", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@Contact_No", int.Parse(TextBox6.Text));
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "DELETE FROM Customer WHERE Account_Id=@Account_Id";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Account_Id", int.Parse(TextBox1.Text));
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                GridView1.DataBind();
            }
        }
    }
}