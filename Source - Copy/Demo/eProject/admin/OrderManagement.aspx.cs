﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_OrderManagement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = DBConnection.getConnection();
        SqlCommand cmd = new SqlCommand("SELECT * FROM Orders ORDER BY OrderTime DESC", con);
        SqlDataReader reader = cmd.ExecuteReader();        
        GridView1.DataSource = reader;
        GridView1.DataBind();
        foreach (GridViewRow row in GridView1.Rows)
        {
            
            SqlCommand cmd1 = new SqlCommand("SELECT * FROM Customer WHERE CustomerID = @customerid", con);
            cmd1.Parameters.Add("@customerid", row.Cells[2].Text);
            SqlDataReader reader1 = cmd1.ExecuteReader();
            while (reader1.Read())
            {
                row.Cells[2].Text = reader1["CustomerName"].ToString() + " (" + reader1["CustomerID"].ToString() + ")";
            }
            SqlCommand cmd2 = new SqlCommand("SELECT * FROM PaymentMethods WHERE PaymentMethodID = @paymentid", con);
            cmd2.Parameters.Add("@paymentid", row.Cells[3].Text);
            SqlDataReader reader2 = cmd2.ExecuteReader();
            while (reader2.Read())
            {
                row.Cells[3].Text = reader2["PaymentMethod"].ToString();
            }
        }

        
    }
    
}