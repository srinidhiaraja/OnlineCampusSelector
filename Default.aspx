<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
    <div><center>
    <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="520px" BackColor="#FFF0DB" 
            Width="1200px">
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="115px" ImageUrl="~/logo_mop.png" 
            Width="709px" />
            <br />
            <br />
            <br />
            <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" 
                BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                Font-Size="Large" ForeColor="#333333" Height="257px" Width="673px" 
                DestinationPageUrl="~/HomeClient.aspx" onauthenticate="Login1_Authenticate">
                <CheckBoxStyle Height="10px" HorizontalAlign="Center" Width="10px" />
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
                    BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                    ForeColor="#284775" Height="40px" Width="100px" />
                <TextBoxStyle Font-Size="0.8em" />
                <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
                    ForeColor="White" />
            </asp:Login>
            <br />
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
