class Operateur < ApplicationRecord
  before_save{self.email= email.downcase}
  validates :nom, presence: true
=begin
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }

  has_secure_password
=end
  validates :mot_de_passe, presence: true,length: { maximum: 15 }
end
