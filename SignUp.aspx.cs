using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;


using System.IO; // Provides access to the File class for reading the file
using System.Net.Mail; // Provides access to the various mail related classes
using System.Net;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CreateUserWizard1_SendingMail(object sender, MailMessageEventArgs e)
    {

        //string fileName = Server.MapPath("~/App_Data/ContactForm.txt");
        //string mailBody = File.ReadAllText(fileName);

        //System.Net.Mail.MailMessage m = new System.Net.Mail.MailMessage();
        //m.Subject = "Client Contact from Site";
        //m.Body = mailBody;
        //m.To.Add("painter@veramaurinapress.org");
        //MailAddress from = new MailAddress("painter@veramaurinapress.org", "Website");
        //m.From = from;

        //NetworkCredential info = new NetworkCredential("painter@veramaurinapress.org", "w3s7C04s7^");
        //SmtpClient sm = new SmtpClient("mail.veramaurinapress.org");
        //sm.DeliveryMethod = SmtpDeliveryMethod.Network;
        //sm.UseDefaultCredentials = false;
        //sm.Credentials = info;
        //sm.Send(e.Message);

        string ourEmail = ConfigurationManager.AppSettings["OurEmail"].ToString();
        MailMessage mail = new MailMessage();
        mail.IsBodyHtml = false;
        mail.To.Add(new MailAddress(ourEmail));
        mail.To.Add("painter@veramaurinapress.org");
        mail.From = new MailAddress(ourEmail);
        mail.Priority = MailPriority.High;
        mail.Subject = "Message from Vera Maurina Press";
        mail.Body = "Hello there";
        SmtpClient smtp = new SmtpClient(ConfigurationManager.AppSettings["SMTPServer"].ToString());

        smtp.UseDefaultCredentials = false;
        smtp.Credentials = new System.Net.NetworkCredential(ourEmail, ConfigurationManager.AppSettings["OurEmailPass"].ToString());

        smtp.Send(e.Message);
        // lblConfirm.Text = "Message sent";
        // btnSubmit.Enabled = false;

    }
}