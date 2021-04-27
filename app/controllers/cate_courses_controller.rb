class CateCoursesController < ApplicationController
  before_action :set_cate_course, only: %i[ show edit update destroy ]

  # GET /cate_courses or /cate_courses.json
  def index
    @cate_courses = CateCourse.all
  end

  # GET /cate_courses/1 or /cate_courses/1.json
  def show
  end

  # GET /cate_courses/new
  def new
    @cate_course = CateCourse.new
  end

  # GET /cate_courses/1/edit
  def edit
  end

  # POST /cate_courses or /cate_courses.json
  def create
    @cate_course = CateCourse.new(cate_course_params)

    respond_to do |format|
      if @cate_course.save
        format.html { redirect_to @cate_course, notice: "Cate course was successfully created." }
        format.json { render :show, status: :created, location: @cate_course }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cate_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cate_courses/1 or /cate_courses/1.json
  def update
    respond_to do |format|
      if @cate_course.update(cate_course_params)
        format.html { redirect_to @cate_course, notice: "Cate course was successfully updated." }
        format.json { render :show, status: :ok, location: @cate_course }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cate_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cate_courses/1 or /cate_courses/1.json
  def destroy
    @cate_course.destroy
    respond_to do |format|
      format.html { redirect_to cate_courses_url, notice: "Cate course was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cate_course
      @cate_course = CateCourse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cate_course_params
      params.fetch(:cate_course, {})
    end
end
