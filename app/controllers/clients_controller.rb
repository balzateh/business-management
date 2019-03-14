class ClientsController < ApplicationController

    def index
        @clients = Client.all
    end

    def new
        @client = Client.new
        @sectors = Sector.all
    end
    
    def create
        @client = Client.new(client_params)
        @client.save
        redirect_to @client
    end

    def show
        @client = Client.find(params[:id])
    end

    def edit
        @client = Client.find(params[:id])
        @sectors = Sector.all
    end

    def update
        @client = Client.find(params[:id])
       
        if @client.update(client_params)
          redirect_to @client
        else
          render 'edit'
        end
    end

    private

    def client_params
        params.require(:client).permit(:name, :company, :email, :phone, :sector_id)
    end

end
