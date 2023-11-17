<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewJobs.aspx.cs" Inherits="ViewJobs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
    <div style="padding: 50px 150px 50px 150px; margin: auto">
    <br /><center>
        <asp:Panel ID="Panel1" runat="server" Height="823px" 
            Width="1000px" HorizontalAlign="Center" Direction="LeftToRight" 
            TabIndex="12" Wrap="True" 
                BackImageUrl="https://images.pexels.com/photos/15588905/pexels-photo-15588905/free-photo-of-young-indian-corporate-girl-going-her-work-on-laptop-and-using-smartphone.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=1260&amp;h=750&amp;dpr=1">
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="82px" Width="509px" 
                    ImageUrl="~/logo_mop.png" /><br /><br /><br />
                    <asp:Button ID="Button1" runat="server" style="margin-left: -700px;" 
                Text="Back" Height="30px" Width="100px" PostBackUrl="~/HomeClient.aspx" />
            <br />
           
            <br /><br /><h2> Jobs Applied for</h2>
            
            <br /><br />
            <br /><center>
            
    
            
                
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
                GridLines="None" Height="201px" Width="802px">
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
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:jobupdatesConnectionString %>" 
                SelectCommand="SELECT * FROM [JOBAPPLICATIONS] WHERE ([STD_ID] = @STD_ID)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="123" Name="STD_ID" Type="Decimal" />
                </SelectParameters>
                </asp:SqlDataSource></center>
            </asp:Panel>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
           
            <br /> <br /> <br />
           
            <br /> <br /> <br />
           
            <br /> <br /> <br />
           
            <br /> <br /> 
                <br />

            
        
    <br /></center>
    <br />

     </div>
    </form>
</body>
</html>
