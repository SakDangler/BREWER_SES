﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BASE.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    body {font-family: Arial, Helvetica, sans-serif;}

    /* Full-width input fields */
    input[type=text], input[type=password] {
      width: 100%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
    }

    /* Set a style for all buttons */
    button {
      background-color: #888;
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 100%;
    }

    button:hover {
      opacity: 0.8;
    }

    /* Extra styles for the cancel button */
    .cancelbtn {
      width: auto;
      padding: 10px 18px;
      background-color: #f44336;
    }

    /* Center the image and position the close button */
    .imgcontainer {
      text-align: center;
      margin: 24px 0 12px 0;
      position: relative;
    }

    img.avatar {
      width: 40%;
      border-radius: 50%;
    }

    .container {
      padding: 16px;
    }

    span.psw {
      float: right;
      padding-top: 16px;
    }

    /* The Modal (background) */
    .modal {
      display: none; /* Hidden by default */
      position: fixed; /* Stay in place */
      z-index: 1; /* Sit on top */
      left: 0;
      top: 0;
      width: 100%; /* Full width */
      height: 100%; /* Full height */
      overflow: auto; /* Enable scroll if needed */
      background-color: rgb(0,0,0); /* Fallback color */
      background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
      padding-top: 60px;
    }

    /* Modal Content/Box */
    .modal-content {
      background-color: #fefefe;
      margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
      border: 1px solid #888;
      width: 300px; /* Could be more or less, depending on screen size */
    }

    /* The Close Button (x) */
    .close {
      position: absolute;
      right: 25px;
      top: 0;
      color: #000;
      font-size: 35px;
      font-weight: bold;
    }

    .close:hover,
    .close:focus {
      color: red;
      cursor: pointer;
    }

    /* Add Zoom Animation */
    .animate {
      -webkit-animation: animatezoom 1.0s;
      animation: animatezoom 1.0s
    }

    @-webkit-keyframes animatezoom {
      from {-webkit-transform: scale(0)} 
      to {-webkit-transform: scale(1)}
    }
  
    @keyframes animatezoom {
      from {transform: scale(0)} 
      to {transform: scale(1)}
    }

    /* Change styles for span and cancel button on extra small screens */
    @media screen and (max-width: 300px) {
      span.psw {
         display: block;
         float: none;
      }
      .cancelbtn {
         width: 100%;
      }
    }
    </style>
    <title></title>
</head>
<body onload="document.getElementById('id01').style.display='block'" style="width:auto;">
    <div id="id01" class="modal">
        <form class="modal-content animate" runat="server">
            <div class="imgcontainer">
                <span onclick="document.getElementById('id01').style.display='none'; window.close()" class="close" title="Close Modal">&times;</span>
                <img src="KHSA_logo.png" alt="Avatar" class="avatar" />
            </div>

            <div class="container">
                <asp:Label ID="ErrorLabel" runat="server" Text="Login Attempt Failed." Visible="false" ForeColor="Red" Font-Bold="true" />
                <br />
                <br />
                <label for="uname"><b>Username</b></label>
                <input runat="server" type="text" placeholder="Enter Username" id="uname" name="uname" required="required" value="tom.adkins" />

                <label for="psw"><b>Password</b></label>
                <input runat="server" type="text" placeholder="Enter Password" id="psw" name="psw" required="required" value="Advantage#1" />
                <%--<input runat="server" type="password" placeholder="Enter Password" id="psw" name="psw" required="required" />--%>
        
                <asp:Button ID="LoginButton" runat="server" CssClass="button" Text="Login" OnClick="Login_Click" Font-Bold="true" Font-Size="Large" Height="40px" Width="100%" BackColor="DarkGray" ForeColor="White" />
            </div>
        </form>
    </div>

    <script>
    // Get the modal
    //var modal = document.getElementById('id01');

    //// When the user clicks anywhere outside of the modal, close it
    //window.onclick = function(event) {
    //    if (event.target == modal) {
    //        modal.style.display = "none";
    //    }
    //}
    </script>
</body>
</html>