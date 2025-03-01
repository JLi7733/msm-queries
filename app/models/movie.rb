# == Schema Information
#
# Table name: movies
#
#  id          :bigint           not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
# app/models/movie.rb
class Movie < ApplicationRecord
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :director
end
