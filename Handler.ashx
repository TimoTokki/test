public void ProcessRequest(HttpContext context)
{
    context.Response.ContentType = "text/plain";
    string html = GetOutsideContent("site/test.html");
    context.Response.Write(html);
}
public static string GetOutsideContent(string Path)
{
    try
    {
        StreamReader sr = new StreamReader(HttpContext.Current.Server.MapPath(Path), System.Text.Encoding.GetEncoding("utf-8"));
        string content = sr.ReadToEnd().ToString();
        sr.Close();
        return content;
     }
     catch
     {
         return "错误";
     }
}
public bool IsReusable
{
    get
    {
        return false;
    }
}