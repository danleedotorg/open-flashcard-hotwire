class MultipleChoiceQuestion < ApplicationRecord
  belongs_to :subject
  has_many :multiple_choice_answers

  def answers
    multiple_choice_answers
  end
end
