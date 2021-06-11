<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="Assignment10.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <style>
        .center{
            margin-left:25%;
        }
        .label {
            display: inline-block;
            width: 140px;
            text-align: right;
        }
        .textbox{
            width:400px;
            outline:none;
        }
        .btn{
           position:absolute;
           right:470px;
           height:40px;
           width:100px;
           border:2px solid black;
           outline:none;
           background-color:transparent;
           border-radius:15px;
           padding:10px;
        }
        .btn:hover{
            background-color:black;
            color:white;

        }
      
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center><h2>Registration Form</h2></center>
            <div class="center">
            
            <asp:Label ID="Label1" CssClass="label" runat="server" Text="UserName"></asp:Label>
            <asp:TextBox ID="username" CssClass="textbox" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="center" display="Dynamic" runat="server" ControlToValidate="username" ErrorMessage="Please Fill Username" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="center" display="Dynamic" runat="server" ErrorMessage="Only Alphabets required" ControlToValidate="username" ValidationExpression="^[a-zA-Z]+$" ForeColor="Red"></asp:RegularExpressionValidator>
            <asp:CustomValidator ID="CustomValidator1" CssClass="center" display="Dynamic" runat="server" ErrorMessage="Username Already Exist" ControlToValidate="username" ForeColor="Red" OnServerValidate="usernameCheck"></asp:CustomValidator>
            <br />
            

            <asp:Label ID="Label2" CssClass="label" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="password" CssClass="textbox" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="center" display="Dynamic" runat="server" ControlToValidate="password" ErrorMessage="Please Fill Password" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" CssClass="center" display="Dynamic" runat="server" ErrorMessage="Password not Valid" ControlToValidate="password" ForeColor="Red" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$"></asp:RegularExpressionValidator>
            <br />

            <asp:Label ID="Label3" CssClass="label" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="cpassword" CssClass="textbox" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="center" display="Dynamic" runat="server" ControlToValidate="cpassword" ErrorMessage="Please Fill Confirm Password" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" CssClass="center" display="Dynamic" ErrorMessage="Password doesn't match" ControlToCompare="password" ControlToValidate="cpassword" ForeColor="Red"></asp:CompareValidator>
            <br />

            <asp:Label ID="Label4" CssClass="label" runat="server" Text="DOB"></asp:Label>
            <asp:TextBox ID="DOB" CssClass="textbox" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="center" display="Dynamic" runat="server" ControlToValidate="DOB" ErrorMessage="Please Fill DOB" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" CssClass="center" display="Dynamic" runat="server" ErrorMessage="Invalid date  formate" ControlToValidate="DOB" ForeColor="Red" ValidationExpression="^\d{4}$|^\d{4}-((0?\d)|(1[012]))-(((0?|[12])\d)|3[01])$"></asp:RegularExpressionValidator>
            <br />

            <asp:Label ID="Label5" CssClass="label" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="email" CssClass="textbox" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="center" display="Dynamic" runat="server" ControlToValidate="email" ErrorMessage="Please Fill Email" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" CssClass="center" display="Dynamic" runat="server" ErrorMessage="Invalid Email" ControlToValidate="email" ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
            <br />

            <asp:ValidationSummary ID="ValidationSummary1" CssClass="center" runat="server" />

            <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Register" OnClick="Register" />
            </div>
            </div>
    
    </form>
</body>
</html>
