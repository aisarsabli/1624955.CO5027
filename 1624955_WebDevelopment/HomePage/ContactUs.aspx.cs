using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1624955_WebDevelopment.HomePage
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            //all fields are empty
            if (string.IsNullOrWhiteSpace(txtFName.Text) &&
                !string.IsNullOrWhiteSpace(txtLName.Text) &&
                !string.IsNullOrWhiteSpace(txtEmail.Text) &&
                !string.IsNullOrWhiteSpace(txtSubject.Text) &&
                !string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                txtLiteralFN.Text = "Please fill in first name";
                
            }

            else if (!string.IsNullOrWhiteSpace(txtFName.Text) &&
                string.IsNullOrWhiteSpace(txtLName.Text) &&
                !string.IsNullOrWhiteSpace(txtEmail.Text) &&
                !string.IsNullOrWhiteSpace(txtSubject.Text) &&
                !string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                txtLiteralLN.Text = "Please fill in last name";
                
            }

            else if (!string.IsNullOrWhiteSpace(txtFName.Text) &&
                !string.IsNullOrWhiteSpace(txtLName.Text) &&
                string.IsNullOrWhiteSpace(txtEmail.Text) &&
                !string.IsNullOrWhiteSpace(txtSubject.Text) &&
                !string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                txtLiteralE.Text = "Please enter your email here";                
            }

            else if (!string.IsNullOrWhiteSpace(txtFName.Text) &&
                !string.IsNullOrWhiteSpace(txtLName.Text) &&
                !string.IsNullOrWhiteSpace(txtEmail.Text) &&
                string.IsNullOrWhiteSpace(txtSubject.Text) &&
                !string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                txtLiteralS.Text = "Give a subject for your message";
            }

            else if (!string.IsNullOrWhiteSpace(txtFName.Text) &&
                !string.IsNullOrWhiteSpace(txtLName.Text) &&
                !string.IsNullOrWhiteSpace(txtEmail.Text) &&
                !string.IsNullOrWhiteSpace(txtSubject.Text) &&
                string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                txtLiteralM.Text = "Type what you want to tell us here.";
            }

            else if (string.IsNullOrWhiteSpace(txtFName.Text) &&
                string.IsNullOrWhiteSpace(txtLName.Text) &&
                !string.IsNullOrWhiteSpace(txtEmail.Text) &&
                !string.IsNullOrWhiteSpace(txtSubject.Text) &&
                !string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                txtLiteralFN.Text = "Please fill in first name";
                txtLiteralLN.Text = "Please fill in last name";               
            }

            else if (string.IsNullOrWhiteSpace(txtFName.Text) &&
                !string.IsNullOrWhiteSpace(txtLName.Text) &&
                string.IsNullOrWhiteSpace(txtEmail.Text) &&
                !string.IsNullOrWhiteSpace(txtSubject.Text) &&
                !string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                txtLiteralFN.Text = "Please fill in first name";
                txtLiteralE.Text = "Please enter your email here";
            }

            else if (string.IsNullOrWhiteSpace(txtFName.Text) &&
                !string.IsNullOrWhiteSpace(txtLName.Text) &&
                !string.IsNullOrWhiteSpace(txtEmail.Text) &&
                string.IsNullOrWhiteSpace(txtSubject.Text) &&
                !string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                txtLiteralFN.Text = "Please fill in first name";
                txtLiteralS.Text = "Give a subject for your message";
            }

            else if (string.IsNullOrWhiteSpace(txtFName.Text) &&
                !string.IsNullOrWhiteSpace(txtLName.Text) &&
                !string.IsNullOrWhiteSpace(txtEmail.Text) &&
                !string.IsNullOrWhiteSpace(txtSubject.Text) &&
                string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                txtLiteralFN.Text = "Please fill in first name";
                txtLiteralM.Text = "Type what you want to tell us here.";
            }

            else if (!string.IsNullOrWhiteSpace(txtFName.Text) &&
                string.IsNullOrWhiteSpace(txtLName.Text) &&
                string.IsNullOrWhiteSpace(txtEmail.Text) &&
                !string.IsNullOrWhiteSpace(txtSubject.Text) &&
                !string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                //txtLiteralFN.Text = "Please fill in first name";
                txtLiteralLN.Text = "Please fill in last name";
                txtLiteralE.Text = "Please enter your email here";
                //txtLiteralS.Text = "Give a subject for your message";
                //txtLiteralM.Text = "Type what you want to tell us here.";
            }

            else if (!string.IsNullOrWhiteSpace(txtFName.Text) &&
                string.IsNullOrWhiteSpace(txtLName.Text) &&
                !string.IsNullOrWhiteSpace(txtEmail.Text) &&
                string.IsNullOrWhiteSpace(txtSubject.Text) &&
                !string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                //txtLiteralFN.Text = "Please fill in first name";
                txtLiteralLN.Text = "Please fill in last name";
                //txtLiteralE.Text = "Please enter your email here";
                txtLiteralS.Text = "Give a subject for your message";
                //txtLiteralM.Text = "Type what you want to tell us here.";
            }

            else if (!string.IsNullOrWhiteSpace(txtFName.Text) &&
                string.IsNullOrWhiteSpace(txtLName.Text) &&
                !string.IsNullOrWhiteSpace(txtEmail.Text) &&
                !string.IsNullOrWhiteSpace(txtSubject.Text) &&
                string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                //txtLiteralFN.Text = "Please fill in first name";
                txtLiteralLN.Text = "Please fill in last name";
                //txtLiteralE.Text = "Please enter your email here";
                //txtLiteralS.Text = "Give a subject for your message";
                txtLiteralM.Text = "Type what you want to tell us here.";
            }

            else if (string.IsNullOrWhiteSpace(txtFName.Text) &&
                string.IsNullOrWhiteSpace(txtLName.Text) &&
                string.IsNullOrWhiteSpace(txtEmail.Text) &&
                !string.IsNullOrWhiteSpace(txtSubject.Text) &&
                !string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                txtLiteralFN.Text = "Please fill in first name";
                txtLiteralLN.Text = "Please fill in last name";
                txtLiteralE.Text = "Please enter your email here";
            }

            else if (string.IsNullOrWhiteSpace(txtFName.Text) &&
                string.IsNullOrWhiteSpace(txtLName.Text) &&
                !string.IsNullOrWhiteSpace(txtEmail.Text) &&
                string.IsNullOrWhiteSpace(txtSubject.Text) &&
                !string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                txtLiteralFN.Text = "Please fill in first name";
                txtLiteralLN.Text = "Please fill in last name";
                txtLiteralS.Text = "Give a subject for your message";
            }

            else if (string.IsNullOrWhiteSpace(txtFName.Text) &&
               string.IsNullOrWhiteSpace(txtLName.Text) &&
               !string.IsNullOrWhiteSpace(txtEmail.Text) &&
               !string.IsNullOrWhiteSpace(txtSubject.Text) &&
               string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                txtLiteralFN.Text = "Please fill in first name";
                txtLiteralLN.Text = "Please fill in last name";
                txtLiteralM.Text = "Type what you want to tell us here.";
            }

            else if (!string.IsNullOrWhiteSpace(txtFName.Text) &&
                string.IsNullOrWhiteSpace(txtLName.Text) &&
                string.IsNullOrWhiteSpace(txtEmail.Text) &&
                string.IsNullOrWhiteSpace(txtSubject.Text) &&
                !string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                //txtLiteralFN.Text = "Please fill in first name";
                txtLiteralLN.Text = "Please fill in last name";
                txtLiteralE.Text = "Please enter your email here";
                txtLiteralS.Text = "Give a subject for your message";
                //txtLiteralM.Text = "Type what you want to tell us here.";
            }
            else if (!string.IsNullOrWhiteSpace(txtFName.Text) &&
                string.IsNullOrWhiteSpace(txtLName.Text) &&
                string.IsNullOrWhiteSpace(txtEmail.Text) &&
                !string.IsNullOrWhiteSpace(txtSubject.Text) &&
                string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                //txtLiteralFN.Text = "Please fill in first name";
                txtLiteralLN.Text = "Please fill in last name";
                txtLiteralE.Text = "Please enter your email here";
                //txtLiteralS.Text = "Give a subject for your message";
                txtLiteralM.Text = "Type what you want to tell us here.";
            }

            else if (!string.IsNullOrWhiteSpace(txtFName.Text) &&
                !string.IsNullOrWhiteSpace(txtLName.Text) &&
                string.IsNullOrWhiteSpace(txtEmail.Text) &&
                string.IsNullOrWhiteSpace(txtSubject.Text) &&
                string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                //txtLiteralFN.Text = "Please fill in first name";
                //txtLiteralLN.Text = "Please fill in last name";
                txtLiteralE.Text = "Please enter your email here";
                txtLiteralS.Text = "Give a subject for your message";
                txtLiteralM.Text = "Type what you want to tell us here.";
            }

            else if (string.IsNullOrWhiteSpace(txtFName.Text) &&
               string.IsNullOrWhiteSpace(txtLName.Text) &&
               string.IsNullOrWhiteSpace(txtEmail.Text) &&
               string.IsNullOrWhiteSpace(txtSubject.Text) &&
               !string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                txtLiteralFN.Text = "Please fill in first name";
                txtLiteralLN.Text = "Please fill in last name";
                txtLiteralE.Text = "Please enter your email here";
                txtLiteralS.Text = "Give a subject for your message";
            }

            else if (string.IsNullOrWhiteSpace(txtFName.Text) &&
               string.IsNullOrWhiteSpace(txtLName.Text) &&
               string.IsNullOrWhiteSpace(txtEmail.Text) &&
               !string.IsNullOrWhiteSpace(txtSubject.Text) &&
               string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                txtLiteralFN.Text = "Please fill in first name";
                txtLiteralLN.Text = "Please fill in last name";
                txtLiteralE.Text = "Please enter your email here";
                txtLiteralM.Text = "Type what you want to tell us here.";
            }

            else if (string.IsNullOrWhiteSpace(txtFName.Text) &&
               string.IsNullOrWhiteSpace(txtLName.Text) &&
               string.IsNullOrWhiteSpace(txtEmail.Text) &&
               string.IsNullOrWhiteSpace(txtSubject.Text) &&
               string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                txtLiteralFN.Text = "Please fill in first name";
                txtLiteralLN.Text = "Please fill in last name";
                txtLiteralE.Text = "Please enter your email here";
                txtLiteralS.Text = "Give a subject for your message";
                txtLiteralM.Text = "Type what you want to tell us here.";
                txtLiteral.Text = "Please fill in empty box.";
            }

            else if (!string.IsNullOrWhiteSpace(txtFName.Text) &&
               string.IsNullOrWhiteSpace(txtLName.Text) &&
               string.IsNullOrWhiteSpace(txtEmail.Text) &&
               string.IsNullOrWhiteSpace(txtSubject.Text) &&
               string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                //txtLiteralFN.Text = "Please fill in first name";
                txtLiteralLN.Text = "Please fill in last name";
                txtLiteralE.Text = "Please enter your email here";
                txtLiteralS.Text = "Give a subject for your message";
                txtLiteralM.Text = "Type what you want to tell us here.";                
            }

            else if (string.IsNullOrWhiteSpace(txtFName.Text) &&
               !string.IsNullOrWhiteSpace(txtLName.Text) &&
               string.IsNullOrWhiteSpace(txtEmail.Text) &&
               string.IsNullOrWhiteSpace(txtSubject.Text) &&
               string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                txtLiteralFN.Text = "Please fill in first name";
                //txtLiteralLN.Text = "Please fill in last name";
                txtLiteralE.Text = "Please enter your email here";
                txtLiteralS.Text = "Give a subject for your message";
                txtLiteralM.Text = "Type what you want to tell us here.";
            }

            else if (string.IsNullOrWhiteSpace(txtFName.Text) &&
               string.IsNullOrWhiteSpace(txtLName.Text) &&
               !string.IsNullOrWhiteSpace(txtEmail.Text) &&
               string.IsNullOrWhiteSpace(txtSubject.Text) &&
               string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                txtLiteralFN.Text = "Please fill in first name";
                txtLiteralLN.Text = "Please fill in last name";
                //txtLiteralE.Text = "Please enter your email here";
                txtLiteralS.Text = "Give a subject for your message";
                txtLiteralM.Text = "Type what you want to tell us here.";
            }

            else if (string.IsNullOrWhiteSpace(txtFName.Text) &&
               string.IsNullOrWhiteSpace(txtLName.Text) &&
               string.IsNullOrWhiteSpace(txtEmail.Text) &&
               !string.IsNullOrWhiteSpace(txtSubject.Text) &&
               string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                txtLiteralFN.Text = "Please fill in first name";
                txtLiteralLN.Text = "Please fill in last name";
                txtLiteralE.Text = "Please enter your email here";
                //txtLiteralS.Text = "Give a subject for your message";
                txtLiteralM.Text = "Type what you want to tell us here.";
            }

            else if (string.IsNullOrWhiteSpace(txtFName.Text) &&
              string.IsNullOrWhiteSpace(txtLName.Text) &&
              string.IsNullOrWhiteSpace(txtEmail.Text) &&
              string.IsNullOrWhiteSpace(txtSubject.Text) &&
              !string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                txtLiteralFN.Text = "Please fill in first name";
                txtLiteralLN.Text = "Please fill in last name";
                txtLiteralE.Text = "Please enter your email here";
                txtLiteralS.Text = "Give a subject for your message";
                //txtLiteralM.Text = "Type what you want to tell us here.";
            }

            /*else if (string.IsNullOrWhiteSpace(txtFName.Text) ||
                string.IsNullOrWhiteSpace(txtLName.Text) ||
                string.IsNullOrWhiteSpace(txtEmail.Text) ||
                string.IsNullOrWhiteSpace(txtSubject.Text) ||
                string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                //txtLiteralFN.Text = "Please fill in first name";
                //txtLiteralLN.Text = "Please fill in last name";
                //txtLiteralE.Text = "Please enter your email here";
                //txtLiteralS.Text = "Give a subject for your message";
                //txtLiteralM.Text = "Type what you want to tell us here.";
                txtLiteral.Text = "Please fill in empty box.";
            }*/

            /*else if
               (                   
                   ((!string.IsNullOrWhiteSpace(txtFName.Text)) &&
                   (!string.IsNullOrWhiteSpace(txtLName.Text)) &&
                   (!string.IsNullOrWhiteSpace(txtEmail.Text)) &&
                   (!string.IsNullOrWhiteSpace(txtSubject.Text)) &&
                   (!string.IsNullOrWhiteSpace(txtMessage.Text)) &&
                   (!Regex.IsMatch(txtEmail.Text,
                   @"^(>("")("",+?(?<!\\)""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\\+/=\?\^'\{\}\|~\w]))(?<=[0-9a-z])@))" +
                   @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-\w][0-9a-z]\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]))$",
                   RegexOptions.IgnoreCase, TimeSpan.FromMilliseconds(250))))))
            {
                txtLiteral.Text = "Invalid email address.";
            }*/

            else
            {
                SmtpClient client = new SmtpClient();
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.EnableSsl = true;
                client.Host = "smtp.gmail.com";
                client.Port = 587;

                // Smtp authentication
                System.Net.NetworkCredential userpass = new System.Net.NetworkCredential("capsulstore2017@gmail.com", "1234567890987654321");
                client.UseDefaultCredentials = false;
                client.Credentials = userpass;

                MailMessage msg = new MailMessage();
                msg.From = new MailAddress(txtEmail.Text);
                msg.To.Add(new MailAddress("capsulstore2017@gmail.com"));

                msg.Subject = txtSubject.Text;
                msg.IsBodyHtml = true;
                msg.Body = string.Format("From: " + txtFName.Text + " " + txtLName.Text + ",   Email From: " + txtEmail.Text + ",   Message: " + txtMessage.Text);

                try
                {
                    client.Send(msg);
                    txtLiteral.Text = "Your message has been successfully sent.";
                }
                catch (Exception ex)
                {
                    txtLiteral.Text = "Error occured while sending your message." + ex.Message;
                }
            }
        }

        protected void txtFName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}