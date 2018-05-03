using System;
using System.Collections.Generic;
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
            

            //Authenticate with paypal
            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();

            //get APIContext Object
            var apiContext = new APIContext(accessToken);

            var PrinterItem = new Item();
            PrinterItem.name = "Printer";
            PrinterItem.currency = "SGD";
            PrinterItem.price = "1000";
            PrinterItem.sku = "PEPCO5027m15"; //sku is stock keeping unit  eg manufacturer code
            PrinterItem.quantity = "1";

            var transctionDetails = new Details();
            transctionDetails.tax = "0";
            transctionDetails.shipping = "0";
            transctionDetails.subtotal = "1000.00";

            var transactionAmount = new Amount();
            transactionAmount.currency = "SGD";
            transactionAmount.total = "1000.00";
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

    