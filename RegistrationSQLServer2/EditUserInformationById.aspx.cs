using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistrationSQLServer2
{
    public partial class EditUserInformationById : System.Web.UI.Page
    {
        //methode
        private int GetRequestId()
        {
            int userId = 0;

            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                userId = Convert.ToInt32(Request.QueryString["id"]);
            }

            return userId;

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //string FirstName = Request.QueryString["FirstName"];
            // string LastName = Request.QueryString["LastName"];

            //int userId = 0;
            if (!Page.IsPostBack)
            {
                BusinessLayer.UserInformation userInfo = new BusinessLayer.UserInformation();

                try
                {
                    //if (string.IsNullOrEmpty(Request.QueryString["id"]))
                    // {
                    // userId = Convert.ToInt32(Request.QueryString["id"]);
                    //}
                    //    if(string.IsNullOrEmpty(Request.QueryString["id"]))
                    //{
                    //    userId
                    //}

                    userInfo = DBLayer.DBUtilities.SelectUserInformationById(GetRequestId());

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }

                firstNameTextBox.Text = userInfo.FirstName;
                lastNameTextBox.Text = userInfo.LastName;
                addressTextBox.Text = userInfo.Address;
                cityTextBox.Text = userInfo.City;
                stateOrProvinceTextBox.Text = userInfo.Province;
                zipCodeTextBox.Text = userInfo.PostalCode;
                countryTextBox.Text = userInfo.Country;
            }
            }

        protected void EnterInfoButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                BusinessLayer.UserInformation userInfoUpdated = new BusinessLayer.UserInformation();

                userInfoUpdated.FirstName = Server.HtmlEncode(firstNameTextBox.Text);
                userInfoUpdated.LastName = Server.HtmlEncode(lastNameTextBox.Text);
                userInfoUpdated.Address = Server.HtmlEncode(addressTextBox.Text);
                userInfoUpdated.City = Server.HtmlEncode(cityTextBox.Text);
                userInfoUpdated.Province = Server.HtmlEncode(stateOrProvinceTextBox.Text);
                userInfoUpdated.PostalCode = Server.HtmlEncode(zipCodeTextBox.Text);
                userInfoUpdated.Country = Server.HtmlEncode(countryTextBox.Text);

                int result = 0;


                try
                {
                    result = DBLayer.DBUtilities.UpdateUserInformationById(GetRequestId(), userInfoUpdated);
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
                //call my method in the dblayer
                // DBLayer.DBUtilities.UpdateUserInformationById(GetRequestId(), userInfoUpdated);
                //this.LblResultMessage.Text = "The User Information was successfuly inserted to the  db table";
                // else
                // this.LblResultMessage.Text = "there is an error occured on inserting the user info";
                if (result == 1)
                    lblUdateResultMessage.Text = "Update has been successfull";
                else
                    lblUdateResultMessage.Text = "Update failed!!!!";
            }

        }
    }

    
}