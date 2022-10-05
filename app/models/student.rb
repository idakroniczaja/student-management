class Student < ApplicationRecord
    has_many :blogs
    has_and_belongs_to_many :courses
    has_many :student_projects
    has_many :projects, through: :student_projects

    validates :first_name, :last_name, :email, :date_of_birth, :permanent_contact_number, :local_address, :permanent_address, :alternate_contact_number, presence: true
    validates :email, uniqueness: { case_sensitive: false }
    validates :first_name, :last_name, length: {minimum:2, maximum:50}
    validate :validate_student_age
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

    def validate_student_age
        if self.date_of_birth.present?
            age = Date.today.year - self.date_of_birth.year
            if age < 15
                errors.add(:age, 'Please provide a valid date of birth! Age must be greater than 15.')
            end
        end
    end


    def full_name 
        "#{first_name} #{last_name}"
    end

    def age 
        return nil unless date_of_birth.present?
        return Date.today.year - date_of_birth.year
    end

end
