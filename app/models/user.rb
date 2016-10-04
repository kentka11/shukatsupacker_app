class User < ApplicationRecord
  #一人のUserに複数のMicropostsがあることを示している
  has_many :microposts
  #validation
  validates :name, presence: true
  validates :email, presence: true
end
