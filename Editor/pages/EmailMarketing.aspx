<%@ Page Title="" Language="C#" MasterPageFile="admin.master" AutoEventWireup="true" CodeFile="EmailMarketing.aspx.cs" Inherits="admin_pages_EmailMarketing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Email Marketing</h1>
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
                                        <label>
                                            Customer E-mail Address
                                        </label>
                                        <asp:textbox id="txtTo" runat="server" cssclass="form-control"></asp:textbox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTo" CssClass="alert-danger" ErrorMessage="Email Required"></asp:RequiredFieldValidator>
                                        <br />
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            Subject
                                        </label>
                                        <asp:textbox id="txtSubject" runat="server" cssclass="form-control"></asp:textbox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSubject" CssClass="alert-danger" ErrorMessage="Subject Required"></asp:RequiredFieldValidator>
                                        <br />
                                    </div>
                                    <div class="form-group">
                                        <label>Message</label>
                                        <asp:textbox id="txtBody" runat="server" cssclass="form-control" textmode="MultiLine"></asp:textbox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBody" CssClass="alert-danger" ErrorMessage="Promotion message Required"></asp:RequiredFieldValidator>
                                        <br />
                                        <br />
                                        <label>Attachment</label><asp:FileUpload ID="FileUpload1" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FileUpload1" CssClass="alert-danger" ErrorMessage="File required"></asp:RequiredFieldValidator>
                                        <br />
                                    </div>
                                    <asp:Button ID="Button1" runat="server" Text="Sent Mail!" cssclass="btn btn-primary" OnClick="Button1_Click"/>
                                    &nbsp
                                        <button type="reset" class="btn btn-info">Reset</button>
                                    <br />
                                    <br />
                                    <asp:Label ID="LabelMessage" runat="server"></asp:Label>
                                    <br />
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
</asp:Content>

