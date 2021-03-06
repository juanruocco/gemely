class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  before_save { self.email = email.downcase }

  field :name, type: String
  field :email, type: String

  field :password_digest, type: String

  has_many :likes
  has_many :user_sports
  field :number_sports, type: Integer
  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }


end
