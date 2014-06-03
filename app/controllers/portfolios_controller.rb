class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

  # GET /portfolios
  def index
    @portfolios = Portfolio.find(:all, :order => 'description')
  end

  # GET /portfolios/1
  def show
 end

  # GET /portfolios/new
  def new
    @portfolio = Portfolio.new
  end

  # GET /portfolios/1/edit
  def edit
  end

  # POST /portfolios
  def create
    @portfolio = Portfolio.new(portfolio_params)

    if @portfolio.save
      redirect_to @portfolio, notice: 'Portfolio was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /portfolios/1
  def update
    if @portfolio.update(portfolio_params)
      redirect_to @portfolio, notice: 'Portfolio was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /portfolios/1
  def destroy
    @portfolio.destroy
    redirect_to portfolios_url, notice: 'Portfolio was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio
      @portfolio = Portfolio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def portfolio_params
      params.require(:portfolio).permit(:title, :description, :image, :image2, :image3, :image4, :image5, :image6, :image7, :image8, :image9, :image10, :image11, :image12, :image14, :image15)
    end
end
