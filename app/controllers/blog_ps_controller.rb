class BlogPsController < ApplicationController
  before_action :set_blog_p, only: [:show, :update, :destroy]

  # GET /blog_ps
  def index
    @blog_ps = BlogP.all

    render json: @blog_ps
  end

  # GET /blog_ps/1
  def show
    render json: @blog_p
  end

  # POST /blog_ps
  def create
    @blog_p = BlogP.new(blog_p_params)

    if @blog_p.save
      render json: @blog_p, status: :created, location: @blog_p
    else
      render json: @blog_p.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /blog_ps/1
  def update
    if @blog_p.update(blog_p_params)
      render json: @blog_p
    else
      render json: @blog_p.errors, status: :unprocessable_entity
    end
  end

  # DELETE /blog_ps/1
  def destroy
    @blog_p.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_p
      @blog_p = BlogP.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_p_params
      params.require(:blog_p).permit(:blog_id)
    end
end
