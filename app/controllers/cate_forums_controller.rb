class CateForumsController < ApplicationController
  before_action :set_cate_forum, only: %i[ show edit update destroy ]

  # GET /cate_forums or /cate_forums.json
  def index
    @cate_forums = CateForum.all.forum
    render :json=>@cate_forums
  end

  # GET /cate_forums/1 or /cate_forums/1.json
  def show
  end

  # GET /cate_forums/new
  def new
    @cate_forum = CateForum.new
  end

  # GET /cate_forums/1/edit
  def edit
  end

  # POST /cate_forums or /cate_forums.json
  def create
    @cate_forum = CateForum.new(cate_forum_params)

    respond_to do |format|
      if @cate_forum.save
        format.html { redirect_to @cate_forum, notice: "Cate forum was successfully created." }
        format.json { render :show, status: :created, location: @cate_forum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cate_forum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cate_forums/1 or /cate_forums/1.json
  def update
    respond_to do |format|
      if @cate_forum.update(cate_forum_params)
        format.html { redirect_to @cate_forum, notice: "Cate forum was successfully updated." }
        format.json { render :show, status: :ok, location: @cate_forum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cate_forum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cate_forums/1 or /cate_forums/1.json
  def destroy
    @cate_forum.destroy
    respond_to do |format|
      format.html { redirect_to cate_forums_url, notice: "Cate forum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cate_forum
      @cate_forum = CateForum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cate_forum_params
      params.fetch(:cate_forum, {})
    end
end
