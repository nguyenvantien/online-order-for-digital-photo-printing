﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 27px;
        }
        .style2
        {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="vPending" runat="server">
                <asp:Panel ID="Panel4" runat="server" HorizontalAlign="Center">
                    <asp:Label ID="Label6" runat="server" 
                        Text="Your payment is pending now, please wait until it be approved"></asp:Label>
                </asp:Panel>
            </asp:View>
            <asp:View ID="vSuccess" runat="server">
                <asp:Panel ID="Panel3" runat="server" HorizontalAlign="Center">
                    <asp:Label ID="Label5" runat="server" Text="Successful"></asp:Label>
                </asp:Panel>
            </asp:View>
            <asp:View ID="vConfirm" runat="server">
                <asp:Panel ID="Panel5" runat="server">
                    <table style="width: 100%; margin-top: 15px;">
                        <tr>
                            <td align="center" class="style1" colspan="2">
                                <asp:Label ID="Label7" runat="server" Text="Sender Information"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style1" width="50%">
                                <asp:Label ID="lblFullName1" runat="server" Text="Full Name:"></asp:Label>
                            </td>
                            <td align="left" class="style1" width="50%">
                                <asp:TextBox ID="txtFullName2" runat="server" Enabled="False" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="50%">
                                <asp:Label ID="lblAddress1" runat="server" Text="Address:"></asp:Label>
                            </td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtAddress2" runat="server" Enabled="False" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="50%">
                                <asp:Label ID="lblEmail1" runat="server" Text="Email:"></asp:Label>
                            </td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtEmail2" runat="server" Enabled="False" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="50%">
                                <asp:Label ID="lblPhoneNumber1" runat="server" Text="Phone Number:"></asp:Label>
                            </td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtPhoneNumber2" runat="server" Enabled="False" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" width="100%">
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="Panel6" runat="server">
                    <table style="width: 100%; margin-top: 15px;">
                        <tr>
                            <td align="center" class="style1" colspan="2">
                                <asp:Label ID="Label8" runat="server" Text="Receiver Information"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style1" width="50%">
                                <asp:Label ID="lblFullName2" runat="server" Text="Full Name:"></asp:Label>
                            </td>
                            <td align="left" class="style1" width="50%">
                                <asp:TextBox ID="txtFullName3" runat="server" Enabled="False" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="50%">
                                <asp:Label ID="lblAddress2" runat="server" Text="Address:"></asp:Label>
                            </td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtAddress3" runat="server" Enabled="False" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="50%">
                                <asp:Label ID="lblEmail2" runat="server" Text="Email:"></asp:Label>
                            </td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtEmail3" runat="server" Enabled="False" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="50%">
                                <asp:Label ID="lblPhoneNumber2" runat="server" Text="Phone Number:"></asp:Label>
                            </td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtPhoneNumber3" runat="server" Enabled="False" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" width="100%">
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="50%">
                                <asp:Button ID="btnConfirm" runat="server" onclick="btnConfirm_Click" 
                                    Text="Confirm" />
                            </td>
                            <td align="left" width="50%">
                                <asp:Button ID="btnEdit" runat="server" onclick="btnEdit_Click" Text="Edit" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </asp:View>
            <asp:View ID="vCreditCard" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td align="right" class="style2" width="50%">
                            <asp:Label ID="Label4" runat="server" Text="Card Number"></asp:Label>
                        </td>
                        <td align="left" class="style2" width="50%">
                            <asp:TextBox ID="txtCardNumber" runat="server" Width="200px"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label9" runat="server" ForeColor="Red" 
                                Text="Your Credit Card Number is invalid" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="50%">
                            <asp:Button ID="btnAccept" runat="server" onclick="btnAccept_Click" 
                                Text="Accept" />
                        </td>
                        <td align="left" width="50%">
                            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                                Text="Choose other Method" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="vPaymentMethod" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td align="right" class="style2" width="50%">
                            <asp:Label ID="Label3" runat="server" Text="Choose payment method:"></asp:Label>
                        </td>
                        <td align="left" class="style2" width="50%">
                            <asp:DropDownList ID="ddlPaymentMethod" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="50%">
                            <asp:Button ID="btnContinue" runat="server" onclick="btnContinue_Click" 
                                Text="Continue" />
                        </td>
                        <td align="left" width="50%">
                            <asp:Button ID="btnBack" runat="server" onclick="btnBack_Click" Text="Back" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="vUserInfo" runat="server">
                <asp:Panel ID="Panel1" runat="server">
                    <table style="width: 100%; margin-top: 15px;">
                        <tr>
                            <td align="center" class="style1" colspan="2">
                                <asp:Label ID="Label1" runat="server" Text="Sender Information"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style1" width="50%">
                                <asp:Label ID="lblFullName" runat="server" Text="Full Name:"></asp:Label>
                            </td>
                            <td align="left" class="style1" width="50%">
                                <asp:TextBox ID="txtFullName" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="50%">
                                <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>
                            </td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtAddress" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="50%">
                                <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                            </td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="50%">
                                <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number:"></asp:Label>
                            </td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtPhoneNumber" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" width="100%">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server">
                    <table style="width: 100%; margin-top: 15px;">
                        <tr>
                            <td align="center" class="style1" colspan="2">
                                <asp:Label ID="Label2" runat="server" Text="Receiver Information"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style1" width="50%">
                                <asp:Label ID="lblFullName0" runat="server" Text="Full Name:"></asp:Label>
                            </td>
                            <td align="left" class="style1" width="50%">
                                <asp:TextBox ID="txtFullName1" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="50%">
                                <asp:Label ID="lblAddress0" runat="server" Text="Address:"></asp:Label>
                            </td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtAddress1" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="50%">
                                <asp:Label ID="lblEmail0" runat="server" Text="Email:"></asp:Label>
                            </td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtEmail1" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="50%">
                                <asp:Label ID="lblPhoneNumber0" runat="server" Text="Phone Number:"></asp:Label>
                            </td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtPhoneNumber1" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" width="100%">
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="50%">
                                <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                                    Text="Continue" />
                            </td>
                            <td align="left" width="50%">
                                <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </asp:View>
        </asp:MultiView>
    
    </div>
    </form>
</body>
</html>
