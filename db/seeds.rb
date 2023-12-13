# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
user = User.create!(username: 'dan2', password: 'test1234', password_confirmation: 'test1234')
american_history_subject = Subject.create!(name: "American History", creator:user, description: "Testing your knowledge of american history")

SingleChoiceQuestion.create!(prompt: "Who was our first president?", answer: 'George Washington', subject: american_history_subject)
SingleChoiceQuestion.create!(prompt: "Was Ben Franklin ever a president?", answer: 'No!', subject: american_history_subject)

mcq1 = MultipleChoiceQuestion.create!(prompt: 'Which of these presidents were involved in the watergate scandal?', subject: american_history_subject)

MultipleChoiceAnswer.create!(answer: 'George Watergate', correct: false, explanation: "This is not a real president", multiple_choice_question_id: mcq1.id)
MultipleChoiceAnswer.create!(answer: 'George Washington', correct: false, multiple_choice_question_id: mcq1.id)
MultipleChoiceAnswer.create!(answer: 'Richard Nixon', correct: true, multiple_choice_question_id: mcq1.id)


aws_sa_c003_subject = Subject.create!(name: "AWS Certificed Solutions Associate", creator:user, description: "Testing your knowledge for the SA-C003 CertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCertCert")