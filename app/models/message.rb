class Message < ActiveRecord::Base
  belongs_to :ad

  #validations
  validates :text, presence: true
  validates :sender_name, presence: true
  validates :telephone_number, presence: true
  validates :email, presence: true
  #####################################################
end
