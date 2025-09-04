<%@ Page Language="C#" %>
<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Web" %>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("<h2>.NET Runtime Version check</h2>");
        Response.Write("Environment.Version: " + Environment.Version.ToString() + "<br/>");
        Response.Write("HttpRuntime.TargetFramework: " + System.Web.HttpRuntime.TargetFramework.ToString() + "<br/>");
        Response.Write("ClrVersion: " + System.Environment.Version.ToString() + "<br/>");
    }
</script>
