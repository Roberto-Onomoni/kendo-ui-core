﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/aspx/Views/Shared/Mobile.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<% Html.Kendo().MobileView()
        .Name("button-home")
        .Layout("examples")
        .Title("Sports Academy")
        .Content(() =>
        {
            %>
            <div class="home head">&nbsp;</div>            
            <% Html.Kendo().MobileButton()                    
                    .HtmlAttributes(new { @class = "button", style = "color: #fff; background-color: #f60" })
                    .Text("Home")
                    .Href("#button-home")
                    .Render();
            %>
            <% Html.Kendo().MobileButton()                    
                    .HtmlAttributes(new { @class = "button" })
                    .Text("Facility")
                    .Href("#facility")
                    .Render();
            %>
            <% Html.Kendo().MobileButton()                    
                    .HtmlAttributes(new { @class = "button" })
                    .Text("Sports")
                    .Href("#sports")
                    .Render();
            %>
            <ul data-role="listview" data-style="inset">
                <li>
                    <p>Our Sports Academy provides a venue for outdoor and indoor sports and activities for children and adults of all ages.</p>
                </li>
            </ul>
            <%
        })
        .Render();
%>

<% Html.Kendo().MobileView()
        .Name("facility")
        .Layout("examples")
        .Title("Facility")
        .Content(() =>
        {
            %>
            <div class="facility head">&nbsp;</div>            
            <% Html.Kendo().MobileButton()                    
                    .HtmlAttributes(new { @class = "button" })
                    .Text("Home")
                    .Href("#button-home")
                    .Render();
            %>
            <% Html.Kendo().MobileButton()
                    .HtmlAttributes(new { @class = "button", style = "color: #fff; background-color: #f60" })
                    .Text("Facility")
                    .Href("#facility")
                    .Render();
            %>
            <% Html.Kendo().MobileButton()                    
                    .HtmlAttributes(new { @class = "button" })
                    .Text("Sports")
                    .Href("#sports")
                    .Render();
            %>
            <ul data-role="listview" data-style="inset">
                <li>
                    <p>The facility has two indoor basketball fields, olympic size swimming pool, outdoor soccer field, baseball field, golf club and more.</p>
                </li>
            </ul>
            <%
        })
        .Render();
%>

<% Html.Kendo().MobileView()
        .Name("sports")
        .Layout("examples")
        .Title("Sports")
        .Content(() =>
        {
            %>
            <div class="sports head">&nbsp;</div>            
            <% Html.Kendo().MobileButton()                    
                    .HtmlAttributes(new { @class = "button" })
                    .Text("Home")
                    .Href("#button-home")
                    .Render();
            %>
            <% Html.Kendo().MobileButton()
                    .HtmlAttributes(new { @class = "button" })
                    .Text("Facility")
                    .Href("#facility")
                    .Render();
            %>
            <% Html.Kendo().MobileButton()
                    .HtmlAttributes(new { @class = "button", style = "color: #fff; background-color: #f60" })
                    .Text("Sports")
                    .Href("#sports")
                    .Render();
            %>
            <ul data-role="listview" data-style="inset">
                <li>American Football</li>
                <li>Baseball</li>
                <li>Basketball</li>
                <li>Football</li>
                <li>Golf</li>
                <li>Swimming</li>
            </ul>
            <%
        })
        .Render();
%>
<style scoped>
    .button {
        margin: 0 0 0 .5em;
        text-align: center;
    }
    .button:first-of-type {
        margin: 0 0 0 1em;
    }
    .home {
        background: url(../../content/mobile/shared/sports-home.jpg) no-repeat center center;	
    }
    .facility {
        background: url(../../content/mobile/shared/sports-facility.jpg) no-repeat center center;	
    }
    .sports {
        background: url(../../content/mobile/shared/sports.jpg) no-repeat center center;	
    }
    #button-home .head,
    #facility .head,
    #sports .head {
	    display: block;
	    margin: 1em;
	    height: 120px;
        -webkit-background-size: 100% auto;
        background-size: 100% auto;
    }
    .km-ios .head,
    .km-blackberry .head {
        -webkit-border-radius: 10px;
        border-radius: 10px;
    }
</style>

</asp:Content>
