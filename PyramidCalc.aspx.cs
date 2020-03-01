using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PyramidCalculator

{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 0; i <= 500; i = i + 1)
                {
                    Units.Items.Add(i.ToString());
                }
                System.Diagnostics.Debug.WriteLine("Hello World!");
            }

        }


        protected void calculateButton_Click(object sender, EventArgs e)
        {
            //Making sure that all the validation has returned true for the fields
            //if (IsValid)
            //{
            decimal units = Convert.ToDecimal(Units.SelectedValue);
            decimal height = Convert.ToDecimal(Height.Text);
            decimal length = Convert.ToDecimal(Length.Text);
            decimal width = Convert.ToDecimal(Width.Text);
            decimal volume = calculateVolume(units, height, length, width);
            Volume.Text = volume.ToString(volume+ " "+ "units Squared");
            //}
        }

        protected decimal calculateVolume(decimal units, decimal height, decimal length, decimal width)
        {

            decimal volume = 0;

            volume = (units * ((height * length * width) / 3));

            return volume;
        }

        protected void resetButton_Click(object sender, EventArgs e)
        {
            Length.Text = "";
            Height.Text = "";
            Width.Text = "";
            Units.SelectedIndex = 0;
            Volume.Text = "";
        }

        /*
         * protected void clearButton_Click1(object sender, EventArgs e)
        {
            interestRateInput.Text = "";
            yearsInput.Text = "";
            futureValueLabel.Text = "";
            investmentDropDown.SelectedIndex = 0;
        }
        */

    }
}

