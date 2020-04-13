using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {

        Label12.Visible = true;
        StringBuilder sb = new StringBuilder();

        sb.AppendLine("Your name: " + TextBox1.Text + " " + TextBox2.Text);
        sb.AppendLine("Phone number: " + TextBox3.Text);
        sb.AppendLine("Adress: " + TextBox4.Text);
        sb.AppendLine("Postal code: " + TextBox5.Text);
        sb.AppendLine("City: " +TextBox6.Text);
        sb.AppendLine("E-mail: " + TextBox7.Text);

        Image img = new Image();
        img.Visible = false;
        
        try
        {
            FileUpload1.SaveAs(Server.MapPath("photo/") + FileUpload1.FileName);
            img.ImageUrl = "photo/" + FileUpload1.FileName;
            img.Width = 300;
            img.Visible = true;
            
            
        }
        catch (Exception ex)
        {
            Response.Write("File attach error: " + ex.Message);
        }
        form1.Controls.Add(img);
        form1.Controls.Add(new LiteralControl("<br />"));
 
   

        Label11.Text = sb.ToString().Replace(Environment.NewLine, "<br />");
 
        


    }
}