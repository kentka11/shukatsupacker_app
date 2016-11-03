class Corporation < ActiveRecord::Base 
  belongs_to :category
  validates :name, presence: true, length: { maximum: 50 }
  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Corporation.where(['name LIKE ?', "%#{search}%"])
    else
      Corporation.all #全て表示。
    end
  end
end
