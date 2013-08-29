class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :recipes
  validates :email, presence: true, uniqueness: { case_sensitive: false}
  validates :first_name, :last_name, presence: true

  #t.string first_name
  #t.string last_name
  #t.string email
end
