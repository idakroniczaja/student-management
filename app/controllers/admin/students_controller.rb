class Admin::StudentsController < ApplicationController 

#callback
before_action :set_student, only: %i[show edit update destroy]

helper_method :formatted_date

#showing the resource
def index
    @students = Student.order('lower(first_name)')

end

#creating new resource
def new
    @student = Student.new
end

#saving new resource, captured from the new 
def create
    @student = Student.new(student_params)
   if @student.save
    redirect_to admin_students_path, notice: 'Student has been created successfully.'
   else
    render :new
   end
end

#fetching single data
def show 
end

#fetching existing data from db and displaying info in the form to edit
def edit 
end

#saving new record in db
def update 
    if @student.update(student_params)
        # redirect_to students_path
        redirect_to admin_student_path(@student), notice: 'Student has been updated successfully.'
    else
        render :edit
    end
end

#deleting and it requires redirection
def destroy 
    @student.destroy
    redirect_to admin_students_path, notice: 'Student has been deleted successfully.'
    binding.pry
end


def tests
end

def personal_details
end



private 

def student_params 
    params.require(:student).permit(:first_name, :last_name, :email, :date_of_birth, :permanent_contact_number, :local_address, :permanent_address, :alternate_contact_number )
end

def set_student
    @student = Student.find(params[:id])
end

def formatted_date(date)
    date.strftime('%A, %b %d, %Y') if date.present?
end



end