class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    x = self.actors
        x.map{|y| "#{y.first_name} #{y.last_name}"}
  end
end