using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuggyWebApp.User
{
    public partial class DownloadForms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMethodOne_Click(object sender, EventArgs e)
        {
            string fileName = "Lincoln.txt";
            string fileExtension = ".txt";

            Response.Clear();
            Response.BufferOutput = true;

            // Set Response.ContentType
            Response.ContentType = GetContentType(fileExtension);

            // Append header
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);

            // Write the file to the Response
            const int bufferLength = 10000;
            byte[] buffer = new Byte[bufferLength];
            int length = 0;
            Stream download = null;

            try
            {
                download = GetFile();

                do
                {
                    if (Response.IsClientConnected)
                    {
                        length = download.Read(buffer, 0, bufferLength);
                        Response.OutputStream.Write(buffer, 0, length);
                        buffer = new Byte[bufferLength];
                    }
                    else
                    {
                        length = -1;
                    }
                }
                while (length > 0);

                Response.Flush();
                Response.End();
            }
            finally
            {
                if (download != null)
                    download.Close();
            }
        }

        protected void btnMethodTwo_Click(object sender, EventArgs e)
        {
            string fileName = "DownloadForms.aspx";
            string fileExtension = ".aspx";

            // Set Response.ContentType
            Response.ContentType = GetContentType(fileExtension);

            // Append header
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);

            // Write the file to the Response
            Response.TransmitFile(Server.MapPath("~/User/" + fileName));
            Response.End();

        }

        protected void CashDeposit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/BlankScreen.aspx");
        }

        private string GetContentType(string fileExtension)
        {
            if (string.IsNullOrEmpty(fileExtension))
                return string.Empty;

            string contentType = string.Empty;
            switch (fileExtension)
            {
                case ".htm":
                case ".html":
                    contentType = "text/HTML";
                    break;

                case ".txt":
                    contentType = "text/plain";
                    break;

                case ".doc":
                case ".rtf":
                case ".docx":
                    contentType = "Application/msword";
                    break;

                case ".xls":
                case ".xlsx":
                    contentType = "Application/x-msexcel";
                    break;

                case ".jpg":
                case ".jpeg":
                    contentType = "image/jpeg";
                    break;

                case ".gif":
                    contentType = "image/GIF";
                    break;

                case ".pdf":
                    contentType = "application/pdf";
                    break;
            }

            return contentType;
        }

        private Stream GetFile()
        {
            FileStream fileStream = new FileStream(Server.MapPath("~/Files/Lincoln.txt"), FileMode.Open, FileAccess.Read);
            return fileStream;
        }
    }
}