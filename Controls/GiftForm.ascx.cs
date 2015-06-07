﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.IO; // Provides access to the File class for reading the file
using System.Net.Mail; // Provides access to the various mail related classes
using System.Net;

public partial class Controls_GiftForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SendButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string fileName = Server.MapPath("~/App_Data/GiftForm.txt");
            string mailBody = File.ReadAllText(fileName);

            mailBody = mailBody.Replace("##Name##", Name.Text);
            mailBody = mailBody.Replace("##Email##", EmailAddress.Text);
            mailBody = mailBody.Replace("##GiftCode##", GiftCode.Text);
            mailBody = mailBody.Replace("##Street##", Street.Text);
            mailBody = mailBody.Replace("##City##", City.Text);
            mailBody = mailBody.Replace("##State##", State.Text);
            mailBody = mailBody.Replace("##ZipCode##", ZipCode.Text);
            mailBody = mailBody.Replace("##Comments##", Comments.Text);
            try
            {
                string ourEmail = ConfigurationManager.AppSettings["OurEmail"].ToString();
                MailMessage m = new MailMessage();
                m.Subject = "Client Contact from Site";
                m.Body = mailBody;
                m.To.Add("painter@veramaurinapress.org");
                MailAddress from = new MailAddress("painter@veramaurinapress.org");
                m.From = from;
                m.Priority = MailPriority.High;
                m.Subject = "Message from VMP Client";

                SmtpClient smtp = new SmtpClient(ConfigurationManager.AppSettings["SMTPServer"].ToString());
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new System.Net.NetworkCredential(ourEmail, ConfigurationManager.AppSettings["OurEmailPass"].ToString());

                smtp.Send(m);   
            }
            catch
            {
                Message.Text = "An error occurred while sending your e-mail. Please try again.";
            }
            finally
            {

      
                MessageSentPara.Visible = true;
                FormTable.Visible = false;
            }
        }
    }
}
