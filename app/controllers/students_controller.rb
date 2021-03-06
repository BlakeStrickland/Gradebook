class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit]
  before_action :logged_in?



  # GET /students
  def index
    @students = Student.all
  end

  # GET /students/1
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
    # @student.teacher_id = session[:log_in_teacher]
  end

  # GET /students/1/edit
  def edit
    # @student = Student.find(params[:id])
  end

  # def update_password
  #   @student = Student.find_by(session[:log_in_student])
  #   if @student.update(student_params)
  #     # Sign in the user by passing validation in case their password changed
  #     redirect_to root_path
  #   else
  #     render "edit"
  #   end
  # end

  # POST /students
  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to @student, notice: 'Student was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /students/1
  def update
    if @student.update(student_params)
      redirect_to @student, notice: 'Student was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /students/1
  def destroy
    @student.destroy
    redirect_to students_url, notice: 'Student was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def student_params
      params.require(:student).permit(:name, :email, :password_digest, :parent_id)
    end
end
