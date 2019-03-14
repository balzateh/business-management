class SaleProduct < ActiveRecord::Base
    belongs_to :sale
    belongs_to :product

    def product_name
        return '' if  self.product.nil?
        self.product.name rescue ''
    end
end
