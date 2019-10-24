<%@ Page Title="" Language="C#" MasterPageFile="~/customer/pages/Customer.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="customer_pages_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
.card {
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    transition: 0.3s;
    width: 25%;
}

.card:hover {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container {
    padding: 2px 16px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="card container-fluid">
  <img src="../images/ConatctUs.JPG" alt="Avatar" style="width:100%">
  <div class="container">
    <h4><b>Customer Care</b></h4> 
    <p><i class="fa fa-phone-square"></i> +8801912272251</p>
    <p><i class="fa fa-mail-reply"></i> naimpabna@gmail.com</p>
  </div>
</div>
</asp:Content>

