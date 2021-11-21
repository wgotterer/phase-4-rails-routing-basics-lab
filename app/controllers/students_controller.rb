class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        # grades = Grade.all
        # render json: grades
        grades = Student.all.order(grade: :desc)

        render json: grades

    end
end
