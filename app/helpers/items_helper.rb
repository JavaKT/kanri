module ItemsHelper

  def converting_to_jpy(price)
    if price == nil
      price = "?????"
    else
      "¥#{price.to_s(:delimited, delimiter: ',')}"
    end
  end

end