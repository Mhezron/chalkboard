class TeachersController < ApplicationController
  before_action :set_teacher, only: [:edit, :update, :destroy, :show]
    def index
      @teachers = Teacher.all
    end
    def new
      @teacher = Teacher.new
    end
    def create
      @teacher = Teacher.new(teacher_params)
      if @teacher.save
        redirect_to teachers_path, notice: "Teacher was successfully added!"
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit
    end

    def update
      if @teacher.update(teacher_params)
        redirect_to teachers_path, notice: "Teacher was successfully updated!"
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @teacher.destroy
      redirect_to teacher_path, notice: "Teacher was successfully deleted!"
    end
    def show
      @teacher = Teacher.find(params[:id])
    end

    private
    def set_teacher
      @teacher = Teacher.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to teachers_path, alert: "Teacher not found"
    end

    def teacher_params
      params.require(:teacher).permit(:teacher_fname, :teacher_lname, :mobile_no, :email, :subject_id, :dept_id)
    end
end
