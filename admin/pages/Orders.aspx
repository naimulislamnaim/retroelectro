<%@ Page Title="" Language="C#" MasterPageFile="~/admin/pages/admin.master" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="admin_pages_Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>


    <div id="page-wrapper">
    <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">All Orders List</h1>
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
                                        <asp:TextBox ID="TextBox1" runat="server" Width="81px" placeholder="Put Order id..." requird="required"></asp:TextBox>
                                        &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="search" cssClass="btn btn-primary"/>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Filter with delivery status:
                                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                            <asp:ListItem>Pending</asp:ListItem>
                                            <asp:ListItem>Progress</asp:ListItem>
                                            <asp:ListItem>Done</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        <br />
                                        <asp:GridView ID="GridView1" runat="server" cssClass="table table-responsive table-striped table-bordered table-hover" PageSize="5" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                                            <Columns>
                                                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="ViewOrder.aspx?x={0}" Text="View" />
                                                <asp:CommandField ShowEditButton="True" />
                                                <asp:TemplateField HeaderText="Delivery Status">
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                                                            <asp:ListItem>Pending</asp:ListItem>
                                                            <asp:ListItem>Progress</asp:ListItem>
                                                            <asp:ListItem>Done</asp:ListItem>
                                                            <asp:ListItem>Cancel</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("DeliveryStatus") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    
                                    <br />
                                    </div>
                                </div>
                            </div>
                            <!-- /.col-lg-6 (nested) -->

                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>

    </div>
            </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

