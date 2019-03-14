class Product < ActiveRecord::Base
    has_many :sales
    has_many :clients, through: :sales
end
