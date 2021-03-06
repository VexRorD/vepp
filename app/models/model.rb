class Model < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates :speudo, presence: true, length: {maximum: 30}
  
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
  :default_url => "/assets/default_image.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  
end
