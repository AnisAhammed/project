using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Message : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
        foreach(var item in txtMail.Text.Split(','))
        {
            mail.To.Add(item);
        }

        //mail.To.Add(txtMail.Text);
        mail.From = new System.Net.Mail.MailAddress("diitidb@gmail.com", "Anis", System.Text.Encoding.UTF8);
        mail.Subject = txtSub.Text;
        mail.SubjectEncoding = System.Text.Encoding.UTF8;
        mail.Body = txtMsg.Text;
        mail.BodyEncoding = System.Text.Encoding.UTF8;
        mail.IsBodyHtml = true;
        mail.Priority = System.Net.Mail.MailPriority.High;

        if (FileUpload1.HasFile)
        {
            string FileName = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
            mail.Attachments.Add(new System.Net.Mail.Attachment(FileUpload1.PostedFile.InputStream, FileName));
        }

        System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient();
        client.Credentials = new System.Net.NetworkCredential("diitidb@gmail.com", "round-27");
        client.Port = 587;
        client.Host = "smtp.gmail.com";
        client.EnableSsl = true;
        try
        {
            client.Send(mail);
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent')", true);

        }
        catch (Exception ex)
        {
            Literal1.Text = ex.Message;
        }

    }
}