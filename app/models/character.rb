# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
def the_actor 
  a_id = self.actor_id 
  matching_actor = Actor.where({:id => a_id})
  the_actor = matching_actor.at(0)

  return the_actor
end 
def the_movie
  m_id = self.movie_id
  matching_movie = Movie.where({:id => m_id}).at(0)
  return matching_movie 
end 
end
