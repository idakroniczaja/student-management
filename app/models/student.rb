class Student < ApplicationRecord
    validates :first_name, :last_name, :email, presence: true

    before_create :display_greenings

    def display_greenings
        puts "Hello, You executed before action callback"
    end
end
