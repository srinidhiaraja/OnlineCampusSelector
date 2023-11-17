<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
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
</head>
<body class="bdy">
    <form id="form2" runat="server">
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
                    <asp:MenuItem Text="Applications" Value="Edit" NavigateUrl="~/AdminView.aspx">
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
        <br />
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" Height="1000px" BackColor="#F8F6F4" 
            style="margin-left: 183px; margin-right: 198px; margin-bottom: 0px;" 
            Width="700px" ViewStateMode="Enabled">
                <br />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="cary" 
                    Font-Size="40pt" Text="Admin Panel"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Font-Size="22pt" Text="JOB LISTING"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="ID:" Font-Bold="True" 
                    Font-Size="Large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Company Name:" Font-Bold="True" 
                    Font-Size="Large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Job:" Font-Bold="True" 
                    Font-Size="Large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Qualification:" Font-Bold="True" 
                    Font-Size="Large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="LPA:" Font-Bold="True" 
                    Font-Size="Large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" Text="Job Type:" Font-Bold="True" 
                    Font-Size="Large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <br />
                
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                    style="margin-left: 0px" Text="Insert" Width="100px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Height="50px" Width="100px" onclick="Button2_Click" 
                    Text="Delete" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" Height="50px" Width="100px" onclick="Button4_Click" 
                    Text="Update" />
                <br />
                <br />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None" Height="256px">
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
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br /> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jobupdatesConnectionString %>" 
            SelectCommand="SELECT * FROM [JOBLISTINGS]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />  
        &nbsp;&nbsp;&nbsp;&nbsp;  
        <br /></center>
    </div>
    </form>
</body>
</html>