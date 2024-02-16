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
  def movie
    my_movie_id = self.movie_id
    matching_movies = Movie.where({ :id => my_movie_id })
    return matching_movies.at(0)
  end

  def actor
    my_actor_id = self.actor_id
    matching_actor = Actor.where({ :id => my_actor_id })
    return matching_actor.at(0)
  end
end
