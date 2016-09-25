class User < ApplicationRecord
  #一人のUserに複数のMicropostsがあることを示している
  has_many :microposts
end
