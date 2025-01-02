class StudentsController < ApplicationController
  before_action :set_student, only: [:edit, :update, :destroy, :show]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def show
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path, notice: "Student Saved successfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @student.update(student_params)
      redirect_to students_path, notice: "Student saved successfully"
    else
      Rails.logger.debug "Update failed: #{@student.errors.full_messages.join(', ')}"
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @student.destroy
    redirect_to students_path, notice: "student deleted successfully"
  end

  private

  def set_student
    @student = Student.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to students_path, alert: "Student not found"
  end

  def student_params
    params.require(:student).permit(:student_fname, :student_lname, :dorm_id, :student_sname, :date_of_birth, :admission_no, :is_active, :date_of_admission, :stream_id)
  end
end
