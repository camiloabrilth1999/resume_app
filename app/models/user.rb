class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :assign_default_role
  belongs_to :city

  validates :city_id, presence: true
  validates :name, presence: true
  validates :first_last_name, presence: true
  validates :national_identifier_number, presence: true, uniqueness: true
  validates :birth_date, presence: true


  def assign_default_role
    self.add_role(:defaultuser) if self.roles.blank?
  end
end
