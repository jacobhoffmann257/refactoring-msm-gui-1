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
    my_movie = movie_id
    matching_movie = Movie.where({id: my_movie})
    the_movie =matching_movie.at(0)
    return the_movie
  end
end
