<%@ Page Title="" Language="C#" MasterPageFile="admin.master" AutoEventWireup="true" CodeFile="ViewOrder.aspx.cs" Inherits="admin_ViewOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }

        .auto-style2 {
            width: 173px;
        }

        .auto-style3 {
            height: 20px;
            width: 173px;
        }
    </style>

        <script>
        //print function
        function printDiv(divName) {
            var pC = document.getElementById(divName).innerHTML;
            var oC = document.body.innerHTML;

            document.body.innerHTML = pC;
            window.print();
            document.body.innerHTML = oC;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">




    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Order Invoice</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <div role="form">
                                    <div class="form-group">

                                        <br />
                                    </div>
                                </div>
                            </div>
                            <div id="empPrint">
                            <!-- /.col-lg-6 (nested) -->
                            <table class="nav-justified table table-bordered table-striped">
                                <tr>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style3"><strong>Order Id:</strong></td>
                                    <td class="auto-style1">
                                        <asp:Label ID="LabelOrderId" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2"><strong>Order Date:</strong></td>
                                    <td>
                                        <asp:Label ID="LabelOrderDate" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2"><strong>Customer Name:</strong></td>
                                    <td>
                                        <asp:Label ID="LabelCustomerFName" runat="server"></asp:Label>
&nbsp;<asp:Label ID="LabelCustomerLName" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2"><strong>Custoemr Email:</strong></td>
                                    <td>
                                        <asp:Label ID="LabelCustomerEmail" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2"><strong>Custoemr Phone:</strong></td>
                                    <td>
                                        <asp:Label ID="LabelCustomerPhone" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2"><strong>Custoemr Address:</strong></td>
                                    <td>
                                        <asp:Label ID="LabelCustomerAddress1" runat="server"></asp:Label>
&nbsp;<asp:Label ID="LabelCustomerAddress2" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <br />
                                        <strong>Item Details:</strong></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive, table-bordered">
                                        </asp:GridView>
                                    </td>
                                </tr>
                                </table>

                            Grand Total:
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            <!-- /.row (nested) -->
                          </div>  
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <input id="Button2" type="button" value="Print" onclick="printDiv('empPrint');" class="btn btn-info" />
    </div>
</asp:Content>

