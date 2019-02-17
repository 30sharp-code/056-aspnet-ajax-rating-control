<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>www.30sharp.com</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:ScriptManager ID="SC" runat="server"></asp:ScriptManager>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                <asp:TemplateField HeaderText="Rate">
                <ItemTemplate>
                <cc1:Rating ID="Rating1" runat="server"
                    CurrentRating="2"
                    MaxRating="5"
                    StarCssClass="ratingStar"
                    WaitingStarCssClass="savedRatingStar"
                    FilledStarCssClass="filledRatingStar"
                    EmptyStarCssClass="emptyRatingStar"
                    style="float: left;" 
                    OnChanged="RatingChanged"
                    Tag='<%# Eval("ProductID") %>'
                    />
                </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
