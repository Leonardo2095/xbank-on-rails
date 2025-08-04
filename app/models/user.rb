class User < ApplicationRecord

  validates :nome, presence: true
  validates :cpf, presence: true, uniqueness: true

  has_many :conta
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
