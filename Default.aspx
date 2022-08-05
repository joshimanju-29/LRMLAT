<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link  rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.css"/>
    <link  rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.18/css/bootstrap-select.min.css"/>  
    
   <%-- <link  rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"/>  
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" />--%>
    <link rel="stylesheet" type="text/css" href="css/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="multi_select_box ">
        <select class=" multi_select w-100" multiple data-selected-text-format ="count>3" >

             <option disabled value="10">Professional Skill</option>
             <option value="10">Academic Skill</option>
             <option value="10">Administrative Knowledge</option>
             <option value="10">Integrity</option>
             <option value="10">Loyalty for profession</option>
             <option value="10">Overall Maturity</option>
             <option value="10">Political Affiliation</option>
             <option value="10">Ideological Inclination</option>
            <option value="20">Experience</option>
                       
        </select>
     
    </div>
        <%--<div class="search_select_box ">
        <select class="w-100" data-live-search="true" >

             <option value="10">Professional Skill</option>
             <option value="10">Academic Skill</option>
             <option value="10">Administrative Knowledge</option>
             <option value="10">Integrity</option>
             <option value="10">Loyalty for profession</option>
             <option value="10">Overall Maturity</option>
             <option value="10">Political Affiliation</option>
             <option value="10">Ideological Inclination</option>
            <option value="20">Experience</option>
                       
        </select>
     
    </div>--%>
         <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.js"></script>
    <script  type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.18/js/bootstrap-select.min.js"></script>

<%-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" ></script>--%>
      <%--  <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>--%>
        <script type="text/javascript" src="js/JavaScript.js"></script>
    </form>
</body>
</html>
