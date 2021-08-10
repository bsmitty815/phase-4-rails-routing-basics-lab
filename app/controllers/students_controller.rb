class StudentsController < ApplicationController

    def index
        #get all the students in an array
        students = Student.all
        #return it in json format
        render json: students
    end

    def grades
        #get all the students in an array
        students = Student.all
        #sort them from highest grade to lowest
        student_by_grade = students.sort {|a , b| b.grade <=> a.grade}
        #return it in json format
        render json: student_by_grade
    end

    def highest_grade
        #get all the students in an array
        students = Student.all
        #sort them from highest grade to lowest
        student_by_grade = students.sort {|a , b| b.grade <=> a.grade}.first
        #return it in json format
        render json: student_by_grade
    end
end
