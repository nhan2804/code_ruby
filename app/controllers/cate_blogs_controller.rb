class CateBlogsController < ApplicationController
  before_action :set_cate_blog, only: %i[ show edit update destroy ]

  # GET /cate_blogs or /cate_blogs.json
  def index
    @cate_blogs = CateBlog.all()
    render :json=>@cate_blogs
  end

  # GET /cate_blogs/1 or /cate_blogs/1.json
  def show
    @cate_blogs = CateBlog.find(4)
    render :json=>@cate_blogs
  end

  # GET /cate_blogs/new
  def new
    @cate_blog = CateBlog.new
  end

  # GET /cate_blogs/1/edit
  def edit
  end

  # POST /cate_blogs or /cate_blogs.json
  def create
    @cate_blog = CateBlog.new(cate_blog_params)

    respond_to do |format|
      if @cate_blog.save
        format.html { redirect_to @cate_blog, notice: "Cate blog was successfully created." }
        format.json { render :show, status: :created, location: @cate_blog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cate_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cate_blogs/1 or /cate_blogs/1.json
  def update
    respond_to do |format|
      if @cate_blog.update(cate_blog_params)
        format.html { redirect_to @cate_blog, notice: "Cate blog was successfully updated." }
        format.json { render :show, status: :ok, location: @cate_blog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cate_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cate_blogs/1 or /cate_blogs/1.json
  def destroy
    @cate_blog.destroy
    respond_to do |format|
      format.html { redirect_to cate_blogs_url, notice: "Cate blog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cate_blog
      @cate_blog = CateBlog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cate_blog_params
      params.fetch(:cate_blog, {})
    end
end
