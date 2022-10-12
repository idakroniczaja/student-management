class Demo < ApplicationRecord
    validates :title, presence: true, uniqueness: true 
    validates :description, presence: true, length: {minimum: 10, maximum: 1000}


    has_one :sub_demo

    before_create :greeting_message 
    
    def greeting_message 
        puts "Hey! I will run before you create an object"
    end

end
