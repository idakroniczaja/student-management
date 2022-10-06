class Blog < ApplicationRecord
    belongs_to :student

    validates :title, :content, presence: true
    validates :title, uniqueness: true
    validates :content, length: {minimum:10, maximum:1000}


    # def show_student
    #     return @student = Student.find(blog.student_id[:id])
    # end
    # @project = Project.find(params[:id])
end
