class SalesController < ApplicationController

  def index
    @sales = Sale.all
    @saleproducts = SaleProduct.all
  end

  def new
    @sale = Sale.new
    @products = Product.all
    @clients = Client.all
    
  end

  def create
    @sale = Sale.new(sale_params)
    @sale.save
    product_ids = params[:product_ids]
    product_ids.each do |sale_p|
      sale_product = SaleProduct.create(sale_id: @sale.id,product_id: sale_p)
    end

    redirect_to @sale
    
  end

  def show
    @sale = Sale.find(params[:id])
    @saleproducts = SaleProduct.all
  end

  private

    def sale_params
        params.require(:sale).permit(:client_id,:product_ids)
    end


end
