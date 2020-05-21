<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DogsList.aspx.cs" Inherits="PetStoreWeb.DogsList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gvListDogsInformation" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="DogName" HeaderText="DogName" SortExpression="DogName" />
                    <asp:BoundField DataField="DogColor" HeaderText="DogColor" SortExpression="DogColor" />
                    <asp:BoundField DataField="DogHight" HeaderText="DogHight" SortExpression="DogHight" />
                    <asp:BoundField DataField="DogBrandlol" HeaderText="DogBrandlol" SortExpression="DogBrandlol" />
                    <asp:BoundField DataField="DogAdress" HeaderText="DogAdress" SortExpression="DogAdress" />
                    <asp:BoundField DataField="DogOwnerName" HeaderText="DogOwnerName" SortExpression="DogOwnerName" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PetStoreDBConnectionString %>" SelectCommand="SELECT * FROM [Dogs]"></asp:SqlDataSource>
        </div>
        <div>
            <asp:ListView ID="lvListDogsInformation" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF;color: #284775;">
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DogNameLabel" runat="server" Text='<%# Eval("DogName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DogColorLabel" runat="server" Text='<%# Eval("DogColor") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DogHightLabel" runat="server" Text='<%# Eval("DogHight") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DogBrandlolLabel" runat="server" Text='<%# Eval("DogBrandlol") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DogAdressLabel" runat="server" Text='<%# Eval("DogAdress") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DogOwnerNameLabel" runat="server" Text='<%# Eval("DogOwnerName") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DogNameTextBox" runat="server" Text='<%# Bind("DogName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DogColorTextBox" runat="server" Text='<%# Bind("DogColor") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DogHightTextBox" runat="server" Text='<%# Bind("DogHight") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DogBrandlolTextBox" runat="server" Text='<%# Bind("DogBrandlol") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DogAdressTextBox" runat="server" Text='<%# Bind("DogAdress") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DogOwnerNameTextBox" runat="server" Text='<%# Bind("DogOwnerName") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="DogNameTextBox" runat="server" Text='<%# Bind("DogName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DogColorTextBox" runat="server" Text='<%# Bind("DogColor") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DogHightTextBox" runat="server" Text='<%# Bind("DogHight") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DogBrandlolTextBox" runat="server" Text='<%# Bind("DogBrandlol") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DogAdressTextBox" runat="server" Text='<%# Bind("DogAdress") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DogOwnerNameTextBox" runat="server" Text='<%# Bind("DogOwnerName") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF;color: #333333;">
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DogNameLabel" runat="server" Text='<%# Eval("DogName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DogColorLabel" runat="server" Text='<%# Eval("DogColor") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DogHightLabel" runat="server" Text='<%# Eval("DogHight") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DogBrandlolLabel" runat="server" Text='<%# Eval("DogBrandlol") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DogAdressLabel" runat="server" Text='<%# Eval("DogAdress") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DogOwnerNameLabel" runat="server" Text='<%# Eval("DogOwnerName") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                        <th runat="server">Id</th>
                                        <th runat="server">DogName</th>
                                        <th runat="server">DogColor</th>
                                        <th runat="server">DogHight</th>
                                        <th runat="server">DogBrandlol</th>
                                        <th runat="server">DogAdress</th>
                                        <th runat="server">DogOwnerName</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DogNameLabel" runat="server" Text='<%# Eval("DogName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DogColorLabel" runat="server" Text='<%# Eval("DogColor") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DogHightLabel" runat="server" Text='<%# Eval("DogHight") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DogBrandlolLabel" runat="server" Text='<%# Eval("DogBrandlol") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DogAdressLabel" runat="server" Text='<%# Eval("DogAdress") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DogOwnerNameLabel" runat="server" Text='<%# Eval("DogOwnerName") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
        </div>
    </form>
</body>
</html>
