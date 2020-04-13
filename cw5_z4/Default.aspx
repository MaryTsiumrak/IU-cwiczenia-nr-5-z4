<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .auto-style2 {
            width: 354px;
        }
        .auto-style5 {
            width: 661px;
        }
        .auto-style6 {
            width: 354px;
            text-align: right;
        }
        .auto-style7 {
            width: 354px;
            text-align: left;
        }
        .auto-style8 {
            width: 354px;
            text-align: center;
        }
        .auto-style9 {
            color: #0066FF;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>

                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label1" runat="server" Text="Name*"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server" ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Your name is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>

                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label2" runat="server" Text="Surname*"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Your surname is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label3" runat="server" Text="Phone number*"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="Your phone number is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox3" EnableClientScript="False" ErrorMessage="Phone number is not correct (ex. 12 1234567)" ForeColor="Red" ValidationExpression="\d+\s\d+"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label4" runat="server" Text="Adress (street)"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label5" runat="server" Text="Adress (postal code)"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Invalid postal code (ex. 31-300)" ForeColor="Red" ValidationExpression="\d{2}-\d{3}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label6" runat="server" Text="Adress (city)"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label7" runat="server" Text="Adress e-mail*"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox7" ErrorMessage="Your e-mail is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Invalid e-mail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label8" runat="server" Text="Adress e-mail (verification)*"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox8" ErrorMessage="Your e-mail is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="Emails do not match" ForeColor="Red"></asp:CompareValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox8" ErrorMessage="Invalid e-mail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
               <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label9" runat="server" Text="Photo"></asp:Label>
                    <td class="auto-style5">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>

                </tr>

                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style5">
                        <asp:Button ID="Button1" runat="server" Text="Send uploaded data" OnClick="Button1_Click" />
                    </td>

                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label10" runat="server" Text="* Required fields"></asp:Label>
                    </td>

                </tr>
               <tr>
                    <td class="auto-style7" colspan="3">
                        
                    </td>
               </tr>
                <tr>
                    <td class="auto-style8" colspan="3">
                        <h3><strong>
                        <asp:Label ID="Label12" runat="server" Text="Your entered information" CssClass="auto-style9" Visible="False"></asp:Label>
                            </strong></h3>
                    </td>
               </tr>
                <tr>
                    <td class="auto-style7" colspan="3">
                        <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
                    </td>

                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>




