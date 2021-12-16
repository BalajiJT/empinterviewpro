<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="empinterviewpro.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 70px;
        }
        .auto-style2 {
            color: #660066;
            font-size: xx-large;
        }
        .auto-style3 {
            color: #772ED1;
            font-size: 40pt;
        }
    </style>
</head>
<body>
    <div  >
    <form id="form1" runat="server">
        <div>
            <br />
            <strong><em>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Admin access"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Password Credentials"></asp:Label>
            </em></strong>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="mailid" DataSourceID="SqlDataSource1" Height="94px" Width="845px">
            <Columns>
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="mailid" HeaderText="mailid" ReadOnly="True" SortExpression="mailid" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="tenth" HeaderText="tenth" SortExpression="tenth" />
                <asp:BoundField DataField="twelth" HeaderText="twelth" SortExpression="twelth" />
                <asp:BoundField DataField="cgpa" HeaderText="cgpa" SortExpression="cgpa" />
            </Columns>
        </asp:GridView>
        <h1> <strong><em>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style2" Text="Applied Candidate's"></asp:Label>
            </em></strong></h1>
        <p> 
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Candidate_name" HeaderText="Candidate_name" SortExpression="Candidate_name" />
                    <asp:BoundField DataField="tenth_mark" HeaderText="tenth_mark" SortExpression="tenth_mark" />
                    <asp:BoundField DataField="twelth_mark" HeaderText="twelth_mark" SortExpression="twelth_mark" />
                    <asp:BoundField DataField="cgpa" HeaderText="cgpa" SortExpression="cgpa" />
                    <asp:BoundField DataField="Applied_roll" HeaderText="Applied_roll" SortExpression="Applied_roll" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:admusrConnectionString2 %>" SelectCommand="SELECT DISTINCT [Candidate_name], [tenth_mark], [twelth_mark], [cgpa], [Applied_roll] FROM [selected] ORDER BY [Candidate_name]"></asp:SqlDataSource>
        </p>
        <h1> 
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:admusrConnectionString %>" DeleteCommand="DELETE FROM [signin] WHERE [mailid] = @mailid" InsertCommand="INSERT INTO [signin] ([Username], [Password], [gender], [mailid], [dob], [tenth], [twelth], [cgpa]) VALUES (@Username, @Password, @gender, @mailid, @dob, @tenth, @twelth, @cgpa)" SelectCommand="SELECT [Username], [Password], [gender], [mailid], [dob], [tenth], [twelth], [cgpa] FROM [signin] ORDER BY [Username], [dob]" UpdateCommand="UPDATE [signin] SET [Username] = @Username, [Password] = @Password, [gender] = @gender, [dob] = @dob, [tenth] = @tenth, [twelth] = @twelth, [cgpa] = @cgpa WHERE [mailid] = @mailid">
                <DeleteParameters>
                    <asp:Parameter Name="mailid" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="mailid" Type="String" />
                    <asp:Parameter Name="dob" Type="DateTime" />
                    <asp:Parameter Name="tenth" Type="Int32" />
                    <asp:Parameter Name="twelth" Type="Int32" />
                    <asp:Parameter Name="cgpa" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="dob" Type="DateTime" />
                    <asp:Parameter Name="tenth" Type="Int32" />
                    <asp:Parameter Name="twelth" Type="Int32" />
                    <asp:Parameter Name="cgpa" Type="Int32" />
                    <asp:Parameter Name="mailid" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </h1>
        <p> &nbsp;</p>
    </form>
        </div>
    </body>
</html>
