class User < ActiveRecord::Base
  has_many :ads

  #validations
  validates :email, presence:true
  validates :email, uniqueness: true
  validates :email, format:{ with: /\A[^@,\s]+@[^@,\s]+\.[^@,\s]+\z/}
  ###############################################
  has_secure_password
end
