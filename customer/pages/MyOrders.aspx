<%@ Page Title="" Language="C#" MasterPageFile="~/customer/pages/Customer.master" AutoEventWireup="true" CodeFile="MyOrders.aspx.cs" Inherits="customer_pages_MyOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">


        <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive table-bordered" PageSize="5">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="ViewMyOrders.aspx?x={0}" Text="View" />
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>

