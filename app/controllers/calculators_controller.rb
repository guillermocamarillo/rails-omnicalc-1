class CalculatorsController < ApplicationController
  def square_results
    render({:template => "calculators_templates/squareresults"})
  end

  def square_new
    render({:template => "calculators_templates/squarenewcalc"})
  end

  def square_root_new
    render({:template => "calculators_templates/squarerootnew"})
  end

  def square_root_results
    @input = params.fetch("user_number")
    @input_root = Math.sqrt(@input.to_f)
    render({:template => "calculators_templates/squarerootcalc"})
  end

  def payment_new
    render({:template => "calculators_templates/paymentnew"})
  end

  def payment_calc
    apr = params.fetch("user_apr").to_f
    aprFormatted = '%.4f' % apr
    @aprWithPercentSign = aprFormatted.to_s + "%"
    @years = params.fetch("user_years").to_f
    @principal = params.fetch("user_pv").to_f
    @principalFormatted = @principal.to_fs(:currency)
    aprDecimal = apr/100
    aprDecimalMonthly = aprDecimal / 12
    numerator = aprDecimalMonthly * @principal
    totalMonths = 12 * @years
    aprPlusOne = aprDecimalMonthly + 1
    denominator = 1 - (aprPlusOne**-totalMonths)
    payment = numerator / denominator
    @monthlyPayment = payment.to_fs(:currency)
    render({:template => "calculators_templates/paymentcalc"})
  end

  def random_new
    render({:template => "calculators_templates/randomnew"})
  end

  def random_results
    @min = params.fetch("user_min").to_f.round(1)
    @max= params.fetch("user_max").to_f.round(1)

    @randomNum = rand(@min..@max).round(15)
    render({:template => "calculators_templates/randomresults"})
  end


end
