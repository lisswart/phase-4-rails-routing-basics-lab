class StudentsController < ApplicationController

  def index
    # model
    students = Student.all
    # view
    render json: students
  end

  def grades
    students = Student.order(grade: :desc)
    render json: students
  end

  def highest_grade
    student = Student.order(grade: :desc).first
    render json: student
  end

end
