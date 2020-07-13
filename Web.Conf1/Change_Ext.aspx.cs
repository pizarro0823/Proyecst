using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Change_Ext : System.Web.UI.Page
{
   

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    public void conexion()
    {
        SqlConnection cnx = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);
        DataTable dtcumplimiento = new DataTable();
        cnx.Open();
        SqlCommand cmd2 = new SqlCommand("select fecha_fin,maquina,referencia,comments,peso,veloc, ROUND(peso*veloc*1440/1000000,2) as T_D " +
                                          "from Hoja1$ " +
                                          "where  maquina like 'A3%' and referencia <> 'M_CAMBIO' and referencia like '%H-0507%' and peso = 305", cnx);
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        da.Fill(dtcumplimiento);
        GridView1.DataSource = dtcumplimiento;
        GridView1.DataBind();


        double suma = GridView1.Rows.Cast<GridViewRow>().Sum(x => Convert.ToDouble(x.Cells[6].Text));
        Label1.Text = Convert.ToString("" + suma);

       
     

        cnx.Close();



    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        conexion();
    }
}