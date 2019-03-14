class Client < ActiveRecord::Base
    validates :name, presence: true
    
    belongs_to :sector

    has_many :sales
    has_many :products, through: :sales

    def sector_name
        return '' if  self.sector.nil?
        self.sector.name rescue ''
    end
end
