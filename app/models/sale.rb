class Sale < ActiveRecord::Base

    belongs_to :client
    belongs_to :product
    has_many :sale_products

    def client_name
        return '' if  self.client.nil?
        self.client.name rescue ''
    end
end
