<%@ Page Title="" Language="C#" MasterPageFile="~/customer/pages/Customer.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta http-equiv="refresh" content="0;url=customer/pages/Default.aspx"/>
    <script type="text/javascript">
        window.location.href = "customer/pages/Default.aspx"
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    Go to <a href="customer/pages/Default.aspx">/pages/index.html</a>
</asp:Content>

