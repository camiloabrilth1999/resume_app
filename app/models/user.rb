class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :assign_default_role
  belongs_to :city, optional: true
  belongs_to :gender, optional: true
  belongs_to :militarycard, optional: true
  belongs_to :nationalidentifiertype, optional: true
  belongs_to :nacionalitytype, optional: true
  has_many :useridioms
  has_many :basicmiddleeducations
  has_many :ocupationexperinces
  has_many :useracademicmodalities

  #validates :city_id, presence: true
  validates :name, presence: true
  validates :first_last_name, presence: true
  validates :national_identifier_number, presence: true, uniqueness: true
  validates :birth_date, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def assign_default_role
    self.add_role(:defaultuser) if self.roles.blank?
  end
end
