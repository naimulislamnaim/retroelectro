<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataTableAllUsers.aspx.cs" Inherits="admin_pages_DataTableAllUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" href=" https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css "/>
    <link rel="stylesheet" href=" https://cdn.datatables.net/buttons/1.5.2/css/buttons.bootstrap.min.css "/>
    


    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $.ajax({
                type: "POST",
                dataType: "json",
                url: "http://localhost:32409/DatatableWebService.asmx/ShowAllUsers",
                success: function (data) {
                    var datatableVariable = $('#StudentTable').dataTable({
                        //"dom": '<lf<t>ip>',
                        dom: 'lBfrtip',
                        buttons: [
                            'copy', 'csv', 'excel', 'pdf', 'print', 'colvis'
                        ],
                        "pageLength": 5,
                        data: data,
                        columns: [
                            { 'data': 'Id' },
                            { 'data': 'FirstName' },
                            { 'data': 'LastName' },
                            { 'data': 'Email' },
                            { 'data': 'Phone' },
                            { 'data': 'Role' },
                            { 'data': 'AddressLine1' },
                            { 'data': 'AddressLine2' },
                            { 'data': 'DivisionName' },
                            { 'data': 'PostCode' }
                        ]
                    })
                },
            });
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="container-fluid">
        <br />
        <br />
    <table id="StudentTable" class="table table-hover table-stripped">
        <thead>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Role</th>
                <th>Address Line 1</th>
                <th>Address Line 2</th>
                <th>Division</th>
                <th>Post Code</th>        
            </tr>
        </thead>

        <tfoot>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Role</th>
                <th>Address Line 1</th>
                <th>Address Line 2</th>
                <th>Division</th>
                <th>Post Code</th> 
            </tr>
        </tfoot>
    </table>
    </div>
    </div>
    </form>
</body>
</html>
