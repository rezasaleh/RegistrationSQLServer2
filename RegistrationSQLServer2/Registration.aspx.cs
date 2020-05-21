using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistrationSQLServer2
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EnterInfoButton_OnClick(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //this.Response.Redirect("RegistrationResult.aspx");
                BusinessLayer.UserInformation userInfo = new BusinessLayer.UserInformation();
                userInfo.FirstName = Server.HtmlEncode(firstNameTextBox.Text);
                userInfo.LastName = Server.HtmlEncode(lastNameTextBox.Text);
                userInfo.Address = Server.HtmlEncode(addressTextBox.Text);
                userInfo.City = Server.HtmlEncode(cityTextBox.Text);
                userInfo.Province = Server.HtmlEncode(stateOrProvinceTextBox.Text);
                userInfo.PostalCode = Server.HtmlEncode(zipCodeTextBox.Text);
                userInfo.Country = Server.HtmlEncode(countryTextBox.Text);

                //this.Response.Redirect("RegistrationResuslt.aspx");
                if (DBLayer.DBUtilities.UpdateUserInformationById(userInfo) == 1)
                    this.LblResultMessage.Text = "The User Information was successfuly inserted to the  db table";
                else
                    this.LblResultMessage.Text = "there is an error occured on inserting the user info";

            }
        }

        protected void UpdateInfoButton_Click(object sender, EventArgs e)
        {

        }
    }
}