class Question < ActiveRecord::Base
  attr_accessible :a, :b, :c, :correct_answer, :d, :query, :quiz_id, :quiz_level
  has_many :answers
  belongs_to :quiz
 end
