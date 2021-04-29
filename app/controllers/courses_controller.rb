class CoursesController < ApplicationController
  before_action :set_course, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  # GET /courses or /courses.json
  def index
    @course = Course.select('course.*','course_cate.*').joins(:cate_course)
    
    render :json =>@course.group_by  { |t| t.cate_course.name }
  end

  # GET /courses/1 or /courses/1.json
  def show
  #  sql = "SELECT `course`.* FROM `course` JOIN LEFT account_course ON id_user= WHERE `course`.`id_course` = "+params[:id]+" LIMIT 1"
  #   records_array = ActiveRecord::Base.connection.execute(sql)
    @course = Course.find(params[:id])
    @bought= CourseAccount.where(id_user:11,id_course:params[:id]).count()
    @chap = @course.lesson
    render :json =>[@course,@chap,@bought]
  end

  # GET /courses/new
  def new
    
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses or /courses.json
  def create
    @course = CourseAccount.new(id_user:11,id_course: params[:course],coin:5000)
    @course.save()
    session[:id_course] =params[:course]
    render :json =>[@course,session[:id_course]]

  end

  # PATCH/PUT /courses/1 or /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: "Course was successfully updated." }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1 or /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: "Course was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_params
      params.fetch(:course, {})
    end
end
