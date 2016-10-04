class Micropost < ApplicationRecord
  #一つのMicropostは一人のUserにのみ属することを意味している。つまり、登録する際には、User_idを入力しなければならない
  belongs_to :user
  #一つのMicropostに文字数制限を設けている/(presence)Micropostを登録する際に、コンテンツが存在しているかのvalidationを行う
  validates :content, length:{ maximum: 140 }, presence: true
end
