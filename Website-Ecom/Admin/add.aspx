﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="Website_Ecom.Admin.add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Add New Product</h1>
    <p>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="prod_id" DataSourceID="SqlDataSource1" align ="center" Height="99px" Width="188px" DefaultMode="Insert">
            <EditItemTemplate>
                prod_id:
                <asp:Label ID="prod_idLabel1" runat="server" Text='<%# Eval("prod_id") %>' />
                <br />
                prod_nm:
                <asp:TextBox ID="prod_nmTextBox" runat="server" Text='<%# Bind("prod_nm") %>' />
                <br />
                prod_prc:
                <asp:TextBox ID="prod_prcTextBox" runat="server" Text='<%# Bind("prod_prc") %>' />
                <br />
                Quantity:
                <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                prod_id:
                <asp:TextBox ID="prod_idTextBox" runat="server" Text='<%# Bind("prod_id") %>' />
                <br />
                prod_nm:
                <asp:TextBox ID="prod_nmTextBox" runat="server" Text='<%# Bind("prod_nm") %>' />
                <br />
                prod_prc:
                <asp:TextBox ID="prod_prcTextBox" runat="server" Text='<%# Bind("prod_prc") %>' />
                <br />
                Quantity:
                <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                prod_id:
                <asp:Label ID="prod_idLabel" runat="server" Text='<%# Eval("prod_id") %>' />
                <br />
                prod_nm:
                <asp:Label ID="prod_nmLabel" runat="server" Text='<%# Bind("prod_nm") %>' />
                <br />
                prod_prc:
                <asp:Label ID="prod_prcLabel" runat="server" Text='<%# Bind("prod_prc") %>' />
                <br />
                Quantity:
                <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WafiConnectionString %>" DeleteCommand="DELETE FROM [prod_tbl] WHERE [prod_id] = @original_prod_id AND [prod_nm] = @original_prod_nm AND [prod_prc] = @original_prod_prc AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL))" InsertCommand="INSERT INTO [prod_tbl] ([prod_id], [prod_nm], [prod_prc], [Quantity]) VALUES (@prod_id, @prod_nm, @prod_prc, @Quantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [prod_tbl]" UpdateCommand="UPDATE [prod_tbl] SET [prod_nm] = @prod_nm, [prod_prc] = @prod_prc, [Quantity] = @Quantity WHERE [prod_id] = @original_prod_id AND [prod_nm] = @original_prod_nm AND [prod_prc] = @original_prod_prc AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_prod_id" Type="Int32" />
                <asp:Parameter Name="original_prod_nm" Type="String" />
                <asp:Parameter Name="original_prod_prc" Type="String" />
                <asp:Parameter Name="original_Quantity" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="prod_id" Type="Int32" />
                <asp:Parameter Name="prod_nm" Type="String" />
                <asp:Parameter Name="prod_prc" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="prod_nm" Type="String" />
                <asp:Parameter Name="prod_prc" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="original_prod_id" Type="Int32" />
                <asp:Parameter Name="original_prod_nm" Type="String" />
                <asp:Parameter Name="original_prod_prc" Type="String" />
                <asp:Parameter Name="original_Quantity" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Back to Main page"><a href="index.aspx">Back to Main page</a></asp:Label>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder_Map" runat="server">
</asp:Content>
