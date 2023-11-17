<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminView.aspx.cs" Inherits="Admin_View" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
 <style type="text/css">
        .style1
        {
            width: 609px;
            height: 89px;
        }
       .bdy {
    background-color:#ffffff;
    background-image:url(https://img.freepik.com/premium-vector/seamless-pattern-doodles-business-theme_555467-329.jpg?size=626&ext=jpg&ga=GA1.2.946417624.1695822830&semt=ais);
    background-repeat:repeat;
    background-position:center center;
    background-attachment:fixed;
}


    </style>
    <title></title>
</head>
<body class="bdy">
    <form id="form1" runat="server">
    <div>
    <center>
        <img alt="img" class="style1" src="logo_mop.png" /><br />
        <br />
        <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DisappearAfter="100000" 
                DynamicHorizontalOffset="12" Font-Names="Verdana" Font-Size="Small" 
                ForeColor="#284E98" Height="50px" Orientation="Horizontal" 
                RenderingMode="Table" StaticSubMenuIndent="30px" Width="1000px">
                <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="15px" VerticalPadding="10px" 
                    Width="200px" />
                <DynamicMenuStyle BackColor="#B5C7DE" />
                <DynamicSelectedStyle BackColor="#507CD1" HorizontalPadding="15px" 
                    VerticalPadding="10px" Width="200px" />
                <Items>
                    <asp:MenuItem Text="Job Listing" Value="Home" NavigateUrl="~/AdminHome.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Applications" Value="Edit" NavigateUrl="~/Admin View.aspx">
                    </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Logout" Value="Logout">
                    </asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="25px" VerticalPadding="15px" 
                    Width="250px" />
                <StaticSelectedStyle BackColor="#507CD1" />
            </asp:Menu>
&nbsp;&nbsp;&nbsp;
    
    </div>
    <center>
    <asp:Panel ID="Panel1" runat="server" BackColor="#F8F6F4" 
        Width="1000px">
        <br />
        <br />
        <center><asp:Label ID="Label1" runat="server" Text="APPLICATIONS" Font-Bold="True" 
            Font-Size="XX-Large"></asp:Label></center>
        
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
            GridLines="None" Height="211px" Width="848px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="STD_ID" HeaderText="STD_ID" 
                    SortExpression="STD_ID" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="AGE" HeaderText="AGE" SortExpression="AGE" />
                <asp:BoundField DataField="QUALIFICATION" HeaderText="QUALIFICATION" 
                    SortExpression="QUALIFICATION" />
                <asp:BoundField DataField="GENDER" HeaderText="GENDER" 
                    SortExpression="GENDER" />
                <asp:BoundField DataField="COMPANY" HeaderText="COMPANY" 
                    SortExpression="COMPANY" />
                <asp:BoundField DataField="JOB" HeaderText="JOB" SortExpression="JOB" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jobupdatesConnectionString %>" 
            SelectCommand="SELECT * FROM [JOBAPPLICATIONS]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="ID   :  "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="DELETE" />
        <br />
        <br />
    </asp:Panel></center>
    </form>
</body>
</html>