class TeachersController < ApplicationController
    def index
      @teachers = Teacher.all
    end
    def new
      @teacher = Teacher.new
    end
    def create
      @teacher = Teacher.new(teacher_params)
      if @teacher.save
        redirect_to @teacher, notice: "Teacher was successfully added!"
      else
        render :new, status: :unporcessable_entity
      end
    end
    def show
      @teacher = Teacher.find(params[:id])
    end

    private

    def teacher_params
      params.require(:teacher).permit(:teacher_fname, :teacher_lname, :mobile_no, :email, )
    end
end
