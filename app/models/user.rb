class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
<<<<<<< Updated upstream
=======

  has_many :tweets
  validates :name, presence: true
  validates :email, uniqueness: true, format: { with: /@/ , message: "は@を入れてください" }
  validates :password, confirmation: true, length: { minimum: 6 }, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i , message: "は半角英数時混合で入力してください" }
  validates :prefecture_id ,numericality: { other_than: 0 , message: "を選択してください" }
>>>>>>> Stashed changes
end
