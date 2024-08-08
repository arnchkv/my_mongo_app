class Student
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :email, type: String


  validates :name, presence: true
  # validates :email, presence: true, uniqueness: true

  # Ensure the email field is unique and properly formatted
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  # Index on email to ensure uniqueness and improve query performance
  index({ email: 1 }, { unique: true, background: true })
end
