<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditUserInformationById.aspx.cs" Inherits="RegistrationSQLServer2.EditUserInformationById" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div>
        <h1>Edit User Information: </h1>
        <form id="form1" runat="server">
            <br />
            <asp:Panel ID="enterUserInfoPanel" runat="server">
                <table cellpadding="3" border="0">
                    <tr>
                        <td>First name:</td>
                        <td>
                            <asp:TextBox ID="firstNameTextBox" runat="server" />

                            <asp:RequiredFieldValidator ID="firstNameTextBoxValidator" runat="server" ForeColor="Red" ControlToValidate="firstNameTextBox" ErrorMessage="Please Enter First Name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Last name:</td>
                        <td>
                            <asp:TextBox ID="lastNameTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="lastNameTextBoxValidator" runat="server" ControlToValidate="lastNameTextBox" ForeColor="Red" ErrorMessage="Please Enter Last   Name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Address:</td>
                        <td>
                            <asp:TextBox ID="addressTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="addressTextBox" runat="server" ForeColor="Red" ErrorMessage="Please enter an Address"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>City:</td>
                        <td>
                            <asp:TextBox ID="cityTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="cityTextBox" runat="server" ForeColor="Red" ErrorMessage="Please enter a City"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>State or Province:</td>
                        <td>
                            <asp:TextBox ID="stateOrProvinceTextBox" MaxLength="2" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="stateOrProvinceTextBox" runat="server" ForeColor="Red" ErrorMessage="Please enter a Province"></asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator ID="provinceValidator" runat="server" ValidationExpression="[A-z]{2}" ControlToValidate="stateOrProvinceTextBox" ForeColor="Red" ErrorMessage="Please enter 2 charaters province"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Zip Code/Postal Code:</td>
                        <td>
                            <asp:TextBox ID="zipCodeTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="zipCodeTextBox" runat="server" ForeColor="Red" ErrorMessage="Please enter a Postal Code"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Country:</td>
                        <td>
                            <asp:TextBox ID="countryTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="countryTextBox" runat="server" ForeColor="Red" ErrorMessage="Please enter a Country"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    
                        <br />
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="enterInfoButton" runat="server" OnClick="EnterInfoButton_Click" Text="Update user information" />
                            </td>
                        </tr>
                        <tr>
                           <td><asp:Label ID="lblUdateResultMessage" runat="server" ForeColor="Red" ></asp:Label>
                               </td> 
                            <td></td>
                        </tr>
                    
                    
                </table>
            </asp:Panel>
    </div>

    </form>
</body>
</html>
