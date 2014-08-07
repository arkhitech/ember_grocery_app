class StocksController < ApplicationController
  before_action :set_stock, only: [:show, :edit, :update, :destroy]

  #respond_to :json, :html
  # GET /stocks
  # GET /stocks.json
  
  def index
    @stocks = Stock.all
    respond_to do |format|
      format.html {@stocks}
      format.json {render json: @stocks.as_json}
    end
  end
  
  def search
    @stocks = []
    @stocks = ThinkingSphinx.search params[:search] if params[:search]        
    respond_to do |format| 
      format.html {render :layout => false}
      format.json {render json: @stocks.as_json}
    end
    
  end  

  # GET /stocks/1
  # GET /stocks/1.json
  def show
    respond_to do |format|
      format.html {@stock}
      format.json {render json: @stock.as_json}
    end
  end

  # GET /stocks/new
  def new
    @stock = Stock.new
  end

  # GET /stocks/1/edit
  def edit
  end

  # POST /stocks
  # POST /stocks.json
  def create
    @stock = Stock.new(stock_params)

    respond_to do |format|
      if @stock.save
        format.html { redirect_to @stock, notice: 'Stock was successfully created.' }
        format.json { render :show, status: :created, location: @stock }
      else
        format.html { render :new }
        format.json { render json: @stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stocks/1
  # PATCH/PUT /stocks/1.json
  def update
    respond_to do |format|
      if @stock.update(stock_params)
        format.html { redirect_to @stock, notice: 'Stock was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock }
      else
        format.html { render :edit }
        format.json { render json: @stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stocks/1
  # DELETE /stocks/1.json
  def destroy
    @stock.destroy
    respond_to do |format|
      format.html { redirect_to stocks_url, notice: 'Stock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def import
    begin
      Stock.import(params[:file])
      redirect_to :back, notice: "Products imported."
    rescue
      redirect_to :back, notice: "Invalid CSV file format."
    end
  end

  def update_stock
    update_record = Stock.update_edit(params)
  
  end  
  
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_stock
    @stock = Stock.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def stock_params
    params.require(:stock).permit(:parent_id, :name, :additional_text, :normal_price, :store_name, :product_group_id, :status, :brand_id, :packaging, :units_of_item, :size, :halal_status, :halal_certification_issuer, :preservatives_status, :artificial_coloring_status, :artificial_flavoring_status, :food_conditioner_status, :artifical_sweetener_status, :returnable, :product_note, :internal_note, :product_price_group, :creator, :picture)
  end
end
