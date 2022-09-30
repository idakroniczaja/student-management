class Student < ApplicationRecord
    has_many :blogs
    has_and_belongs_to_many :courses
    has_many :student_projects
    has_many :projects, through: :student_projects

    validates :first_name, :last_name, :email, :date_of_birth, :permanent_contact_number, :local_address, :permanent_address, :alternate_contact_number, presence: true

    # before_create :display_greenings
    after_save :display_student_age

    # def display_greenings
    #     puts "Hello, You executed before action callback"
    # end

    def display_student_age
        if self.date_of_birth.present?
            age = Date.today.year - self.date_of_birth.year
            puts "************ Age of the student is #{age}."
       else
        puts "******** Age can not be calculated without date_of_birth"
       end
    end

end
