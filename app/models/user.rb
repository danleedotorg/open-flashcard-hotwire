class User < ApplicationRecord
  validates_uniqueness_of :username
  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true

  attr_accessor :password_confirmation
  authenticates_with_sorcery!
end
