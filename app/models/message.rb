class Message < ActiveRecord::Base
  belongs_to :ad

  #validations
  validates :text, presence: true
  validates :sender_name, presence: true
  validates :telephone_number, presence: true
  validates :telephone_number, format: {with: /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/}
  validates :email, presence: true
  validates :email, format: { with: /\A[^@,\s]+@[^@,\s]+\.[^@,\s]+\z/}
  #####################################################
end
