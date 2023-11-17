<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApplyNow.aspx.cs" Inherits="ApplyNow" %>

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
    <div style="padding: 50px 150px 50px 150px; margin: auto">
    <br /><center>
        <asp:Panel ID="Panel1" runat="server" Height="823px" 
            Width="1000px" HorizontalAlign="Center" Direction="LeftToRight" 
            TabIndex="12" Wrap="True" BackImageUrl="~/Artboard 1.png">
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="82px" Width="509px" 
                    ImageUrl="~/logo_mop.png" /><br /><br /><br />
                    <asp:Button ID="Button1" runat="server" style="margin-left: -700px;" 
                Text="Back" Height="30px" Width="100px" PostBackUrl="~/HomeClient.aspx" />
            <br />
            <br />
            
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="cary" 
                Font-Size="XX-Large" Text="Registration Form"></asp:Label>
            <br />
            <br /><center>
            <asp:Panel ID="Panel2" runat="server"    Height="460px" 
                Width="566px" style = "margin-left : 500px;">
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" Text="Student ID: "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Student Name :  "></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Age : "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Qualification :  "></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="Gender : "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" Text="Company : "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Text="Job : "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <br />
                <br />
                
                &nbsp;&nbsp;&nbsp;
                <center>
                    <asp:Button ID="Button2" runat="server" Height="50px" style="margin-left: 0px" 
                        Text="APPLY" Width="100px" onclick="Button2_Click" />
                    <br /><br /><br />
                    <br /><br /><br />
                </center>
            </asp:Panel>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
           
                <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="#009933"></asp:Label>
           
            <br /> <br /> 
                <br />

            
            
            </asp:Panel>
    <br /></center>
    <br />

     </div>
    </form>
</body>
</html>
