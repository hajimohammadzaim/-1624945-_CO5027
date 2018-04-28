using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Drawing2D;

namespace Printer.Admin
{
    public partial class uploadimage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["id"];
            string filename = productId + ".jpg";
            CurrentImage.ImageUrl = "~/ProductImages/" + filename;
        }

        protected void UploadBtn_Click(object sender, EventArgs e)
        {
            string productId = Request.QueryString["id"];
            string filename = productId + ".jpg";
            string saveLocation = Server.MapPath("~/ProductImages/" + filename);


            if (FileUploadimage.HasFile)
            {
                System.Drawing.Image img = System.Drawing.Image.FromStream(FileUploadimage.PostedFile.InputStream);
   
     
                 Graphics graphicsObject;
                int x, y;

                int w = img.Width;
                int h = img.Height;

                Bitmap bmp = new Bitmap(w, h);


                graphicsObject = Graphics.FromImage(bmp);
                graphicsObject.DrawImage(img, 0, 0, w, h);

                System.Drawing.Image wmImage = bmp;

              

                string watermark = "Printer";

                int startsize = (img.Width / watermark.Length);//get the font size with respect to length of the string

                //x and y cordinates to draw a string
                x = 0;
                y = bmp.Height / 2;

                //System.Drawing.StringFormat drawFormat = new System.Drawing.StringFormat(StringFormatFlags.DirectionVertical); -> draws a vertical string for watermark
                System.Drawing.StringFormat drawFormat = new System.Drawing.StringFormat(StringFormatFlags.NoWrap);

                //drawing string on Image
                graphicsObject.DrawString(watermark, new Font("Verdana", startsize, FontStyle.Bold), new SolidBrush(Color.FromArgb(135, 92, 242)), x, y, drawFormat);

               


               bmp.Save(saveLocation);
            }

        }
        
    }
}