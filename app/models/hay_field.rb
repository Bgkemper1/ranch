class HayField < ApplicationRecord
require 'unitwise'
require "prawn"

  def build_totals(params)
    total_weight = params["bail_count"].to_i * params["average_weight"].to_i
    tons = Unitwise(total_weight, 'pound').to_us_ton['value'].to_i
    amount = tons * params["price_per_ton"].to_i
    percent = convert_percentage(params['percent_to_split'])
    mine = (amount * percent).to_f
    yours = (amount * (1 - percent)).to_f

    self.update(bail_count: params["bail_count"],
                average_weight: params["average_weight"],
                price_per_ton: params["price_per_ton"],
                cuts: params["cuts"],
                my_amount: mine,
                your_amount: yours,
                configured: true)
  end

  def convert_percentage(n)
    n.chomp("%").to_f / 100
  end
end
