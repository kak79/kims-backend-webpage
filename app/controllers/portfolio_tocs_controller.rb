class Portfolio_tocsController < ApplicationController
  before_action :set_portfolio_toc, only: [:show, :update, :destroy]

  # GET /portfolio_tocs
  def index
    @portfolio_tocs = Portfolio_Toc.all

    render json: @portfolio_tocs
  end

  # GET /portfolio_tocs/1
  def show
    render json: @portfolio_toc
  end

  # POST /portfolio_tocs
  def create
    @portfolio_toc = Portfolio_Toc.new(portfolio_params)

    if @portfolio_toc.save
      render json: @portfolio_toc, status: :created, location: @portfolio_toc
    else
      render json: @portfolio_toc.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /portfolio_tocs/1
  def update
    if @portfolio_toc.update(portfolio_params)
      render json: @portfolio_toc
    else
      render json: @portfolio_toc.errors, status: :unprocessable_entity
    end
  end

  # DELETE /portfolio_tocs/1
  def destroy
    @portfolio_toc.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio_toc
      @portfolio_toc = Portfolio_Toc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def portfolio_toc_params
      params.fetch(:portfolio_toc, {})
    end
end
