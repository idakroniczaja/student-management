class Student < ApplicationRecord
    validates :first_name, :last_name, :email, :date_of_birth, :permanent_contact_number, :local_address, :permanent_address, :alternate_contact_number, presence: true

    before_create :display_greenings

    def display_greenings
        puts "Hello, You executed before action callback"
    end
end
