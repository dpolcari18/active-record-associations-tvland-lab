class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
  
    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        # binding.pry
        Character.all.find_all {|character| character.actor_id == self.id}.map {|character| "#{character.name} - #{character.show.name}"}
    end 
end