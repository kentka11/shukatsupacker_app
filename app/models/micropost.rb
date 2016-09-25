class Micropost < ApplicationRecord
  #一つのMicropostは一人のUserにのみ属することを意味している
  belongs_to :user
  #一つのMicropostに文字数制限を設けている
  validates :content, length:{ maximum: 140 }
end
