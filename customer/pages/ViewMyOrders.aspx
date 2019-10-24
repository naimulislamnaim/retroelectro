<%@ Page Title="" Language="C#" MasterPageFile="~/customer/pages/Customer.master" AutoEventWireup="true" CodeFile="ViewMyOrders.aspx.cs" Inherits="customer_pages_ViewMyOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 272px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">

    
    <table class="nav-justified table table-bordered">
        <tr>
            <td class="auto-style1">Order Id</td>
            <td>
                <asp:Label ID="LabelOrderId" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Date</td>
            <td>
                <asp:Label ID="LabelDate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered">
                </asp:GridView>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

