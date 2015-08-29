require "pricecheck/version"

module Pricecheck
  class Charge
    attr_accessor :amount, :charge_fee, :charge_percentage, :tax_percentage, :fee

    def initialize(amount, charge_fee, charge_percentage, tax_percentage = nil)
      @amount = amount
      @charge_fee = charge_fee
      @charge_percentage = charge_percentage
      @tax_percentage = tax_percentage
    end

    def fee
      total - amount
    end

    def total
      if tax_percentage
        tax = "1.#{tax_percentage}".to_f
        fixed = (charge_fee / 100 * tax)
        percentage = (charge_percentage/ 100) * tax
      else
        fixed = charge_fee
        percentage = charge_percentage / 100
      end

      ((amount + fixed) / (1 - percentage)).to_i
    end
  end
end
