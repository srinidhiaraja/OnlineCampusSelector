<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeClient.aspx.cs" Inherits="HomeClient" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
body 
{
    background-color:#ffffff;
    background-image:url(https://img.freepik.com/premium-vector/seamless-pattern-doodles-business-theme_555467-329.jpg?size=626&ext=jpg&ga=GA1.2.946417624.1695822830&semt=ais);
    background-repeat:repeat;
    background-position:center center;
    background-attachment:fixed;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
    <br />
    <center>
        <asp:Panel ID="Panel1" runat="server" BackColor="#F8F6F4" Width="1300px">
            <br />
            <asp:Image ID="Image1" runat="server" ForeColor="#FF9933" Height="83px" 
                ImageAlign="Top" ImageUrl="~/logo_mop.png" Width="579px" />
            <br />
            <br />
            <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DisappearAfter="100000" 
                DynamicHorizontalOffset="12" Font-Names="Verdana" Font-Size="Small" 
                ForeColor="#284E98" Height="50px" Orientation="Horizontal" 
                RenderingMode="Table" StaticSubMenuIndent="30px" Width="1000px">
                <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="15px" VerticalPadding="10px" 
                    Width="350px" />
                <DynamicMenuStyle BackColor="#B5C7DE" />
                <DynamicSelectedStyle BackColor="#507CD1" HorizontalPadding="15px" 
                    VerticalPadding="10px" Width="350px" />
                <Items>
                    <asp:MenuItem Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem Text="View" Value="View">
                        <asp:MenuItem Text="Jobs Applied For" Value="Jobs Applied For" 
                            NavigateUrl="~/ViewJobs.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Logout" Value="Logout">
                    </asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="25px" VerticalPadding="15px" 
                    Width="250px" />
                <StaticSelectedStyle BackColor="#507CD1" />
            </asp:Menu>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Hello," Font-Size="Large"></asp:Label>
            &nbsp;
            <asp:LoginName ID="LoginName1" runat="server" Font-Size="Large" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" 
                Text="Checkout new placement drives below!"></asp:Label>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                GridLines="None" Height="81px" Width="764px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                    <asp:BoundField DataField="COMPANY_NAME" HeaderText="COMPANY_NAME" 
                        SortExpression="COMPANY_NAME" />
                    <asp:BoundField DataField="JOB" HeaderText="JOB" SortExpression="JOB" />
                    <asp:BoundField DataField="QUALIFICATIONS" HeaderText="QUALIFICATIONS" 
                        SortExpression="QUALIFICATIONS" />
                    <asp:BoundField DataField="LPA" HeaderText="LPA" SortExpression="LPA" />
                    <asp:BoundField DataField="JOB_TYPE" HeaderText="JOB_TYPE" 
                        SortExpression="JOB_TYPE" />
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
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="50px" 
                PostBackUrl="~/ApplyNow.aspx" Text="Apply Now" Width="250px" 
                onclick="Button1_Click" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:jobupdatesConnectionString %>" 
                onselecting="SqlDataSource1_Selecting" 
                SelectCommand="SELECT * FROM [JOBLISTINGS]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>
        </center>
    </div>
    </form>
</body>
</html>
