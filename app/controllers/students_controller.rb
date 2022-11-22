class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        #get all students ordered by grade
        grades = Student.all.order("grade DESC")

        #return a JSON response using student object
        render json:grades 
    end

    def highest_grade
        highest_grade = Student.all.order("grade DESC")
        render json:highest_grade.first
    end
end
