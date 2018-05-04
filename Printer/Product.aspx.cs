using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace Printer
{
    public partial class Product : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void BtnCart_Click(object sender, EventArgs e)
        {

            SqlConnection db = new SqlConnection(@"Data Source=SQL2016.FSE.Network;Initial Catalog=db_1624945_co5027_asg;Persist Security Info=True;User ID=user_db_1624945_co5027_asg;Password=abc123");
            int pid;

            string name = "";
            string price = "";

            pid = Convert.ToInt32(Request.QueryString["PID"].ToString());
            db.Open();
            SqlCommand command = db.CreateCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = "select * from tblproduct where ProductID=" + pid + "";
            command.ExecuteNonQuery();
            DataTable table = new DataTable();
            SqlDataAdapter info = new SqlDataAdapter(command);
            info.Fill(table);
            foreach (DataRow rows in table.Rows)
            {
                name = rows["ProductName"].ToString();
                price = rows["Price"].ToString();
               
            }
            
            decimal PrinterPrice = Convert.ToDecimal(price);
            decimal QuantityLabel = decimal.Parse(DropDownList1.SelectedValue);
            decimal subtotal = (QuantityLabel * PrinterPrice);
            decimal shipping = 10;
            decimal total = subtotal + shipping;

            //Authenticate with paypal
            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();

            //get APIContext Object
            var apiContext = new APIContext(accessToken);

            var PrinterItem = new Item();
            PrinterItem.name = "Printer";
            PrinterItem.currency = "SGD";
            PrinterItem.price = PrinterPrice.ToString();
            PrinterItem.sku = "PEPCO5027m15"; //sku is stock keeping unit  eg manufacturer code
            PrinterItem.quantity = QuantityLabel.ToString();

            var transctionDetails = new Details();
            transctionDetails.tax = "0";
            transctionDetails.shipping = shipping.ToString();
            transctionDetails.subtotal = subtotal.ToString("0.00");

            var transactionAmount = new Amount();
            transactionAmount.currency = "SGD";
            transactionAmount.total = total.ToString("0.00");
            transactionAmount.details = transctionDetails;


            var transaction = new Transaction();
            transaction.description = "Your order of Printer";
            transaction.invoice_number = Guid.NewGuid().ToString(); //this should ideally be the id of of a record storing the order
            transaction.amount = transactionAmount;
            transaction.item_list = new ItemList
            {
                items = new List<Item> { PrinterItem }
            };


            var payer = new Payer();
            payer.payment_method = "paypal";

            var redirectUrls = new RedirectUrls();
            redirectUrls.cancel_url = "https://localhost:2506/Cancel.aspx";
            redirectUrls.return_url = "https://localhost:2506/CompletePurchase.aspx";


            try
            {


                var payment = Payment.Create(apiContext, new Payment
                {
                    intent = "sale",
                    payer = payer,
                    transactions = new List<Transaction> { transaction },
                    redirect_urls = redirectUrls
                });

                Session["paymentId"] = payment.id;

                foreach (var link in payment.links)
                {
                    if (link.rel.ToLower().Trim().Equals("approval_url"))
                    {
                        //found the appropriate link, send the user there 
                        Response.Redirect(link.href);

                    }
                }
            }
            catch (paymentExpension ex)
            {

                Response.Write(ex.Response);
            }
            }
           

        }
        }

    