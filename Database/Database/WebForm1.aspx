<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Database.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 297px;
        }
        .auto-style2 {
            width: 297px;
            height: 33px;
        }
        .auto-style3 {
            height: 33px;
            width: 760px;
        }
        .auto-style4 {
            width: 760px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Account ID :"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Name :"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="Age :"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Text="Address :"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label5" runat="server" Text="Email ID :"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server" Text="Account Type : "></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Savings A/c</asp:ListItem>
                            <asp:ListItem>Current A/c</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Contact No :"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="Phone"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="Button4" runat="server" Text="Display" OnClick="Button4_Click" />
                    </td>
                </tr>
            </table>


            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Account_Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Account_Id" HeaderText="Account_Id" ReadOnly="True" SortExpression="Account_Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Email_Id" HeaderText="Email_Id" SortExpression="Email_Id" />
                    <asp:BoundField DataField="Account_Type" HeaderText="Account_Type" SortExpression="Account_Type" />
                    <asp:BoundField DataField="Contact_No" HeaderText="Contact_No" SortExpression="Contact_No" />
                </Columns>
            </asp:GridView>


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>


        </div>
    </form>
</body>
</html>
