module ItemsHelper
  def my_formatted_number number
    number_with_precision(number, precision: 2)
  end
end
