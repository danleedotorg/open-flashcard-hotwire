class Subject < ApplicationRecord
  validates_presence_of :name, :description
  belongs_to :creator, class_name: "User"
  has_many :single_choice_questions
  has_many :multiple_choice_questions

  def questions
    single_choice_questions + multiple_choice_questions.map { |question| question.merge(answers: question.answers)}
  end

  def questions_as_hashes
    single_choice_questions.map(&:attributes) + multiple_choice_questions.map { |question| question.attributes.merge(answers: question.answers)}
  end

  def self.find_with_all_questions(subject_id)
    subject = Subject.eager_load(:single_choice_questions, :multiple_choice_questions => :multiple_choice_answers).find(subject_id)
    [subject, subject.questions_as_hashes]
  end
end
