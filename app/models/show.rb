class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters

  def actors_list
    Actor.all.map {|actors| actors.full_name}
  end
end