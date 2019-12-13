class Ad < ActiveRecord::Base
  mount_uploader :image, ImagesUploader
  
  belongs_to :user
  belongs_to :category
  belongs_to :condition
  has_many :messages, dependent: :destroy

  #validations
  validates :description, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :location, presence: true
  validates :category, presence: true
  validates :condition, presence: true
  #############################################################
end
