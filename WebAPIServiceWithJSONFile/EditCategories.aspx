﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditCategories.aspx.cs" Inherits="WebAPIServiceWithJSONFile.EditCategories" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WebAPI Service with jQuery</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/webapi.js"></script>
</head>
<body>
<div class="container">
    <header class="jumbotron">Web API Service with jQuery</header>
    <main>
        
        <form id="form1" runat="server">
            <div class="row">
                <div class="col-sm-6 table-responsive">
                    <h1>Edit Categories</h1>
                    <table id="categories" class="table table-bordered table-striped">
                        <thead><tr><th>ID</th><th>Short Name</th><th>Long Name</th></tr></thead>
                        <tbody></tbody>
                    </table>
                    <span id="message">Loading...</span>
                </div>
                <div id="details" class="col-sm-6">
                    <input type="hidden" id="orig_id" />
                    <div class="form-group">
                        <label class="control-label">ID</label>
                        <input type="text" id="id" name="CategoryID" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Short Name</label>
                        <input type="text" id="short" name="ShortName" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Long Name</label>
                        <input type="text" id="long" name="LongName" class="form-control" />
                    </div>
                    <div class="form-group">
                        <input type="button" value="Insert" class="btn" onclick="insertCat();" />
                        <input type="button" value="Update" class="btn" onclick="updateCat();" />
                        <input type="button" value="Delete" class="btn" onclick="deleteCat();" />
                        <input type="button" value="Clear" class="btn" onclick="clearAll();" />
                    </div>
                </div>
            </div><%--end row--%>

        </form>
    </main>
</div>
</body>
</html>
