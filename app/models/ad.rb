class Ad < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :condition
  has_many :messages, dependent: :destroy
end 
