class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show edit update destroy ]
 skip_before_action :verify_authenticity_token
  # GET /comments or /comments.json
  def index
    @comments = Comment.select("cmt.*,accounts.*").joins(:account)
    render :json => @comments
  end

  # GET /comments/1 or /comments/1.json
  def show
    @comments = Comment.joins(:account).select("cmt.*,accounts.*").where('id_forum': params[:id])
    render :json => @comments
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments or /comments.json
  def create
    
    @comment = Comment.new(content_cmt:params[:content_cmt],id_forum:params[:id_forum], id_auth: session[:user_id],id_parent: 0,id_blog:0 )
    @comment.save()
    @ok = Comment.joins(:account).select("cmt.*,accounts.*").where('id_cmt': @comment.id_cmt)
    render :json => @ok

    # respond_to do |format|
    #   if @comment.save
    #     format.html { redirect_to @comment, notice: "Comment was successfully created." }
    #     format.json { render :show, status: :created, location: @comment }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @comment.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: "Comment was successfully updated." }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: "Comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      # @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.fetch(:content_cmt,:id_forum,{})
    end
end
