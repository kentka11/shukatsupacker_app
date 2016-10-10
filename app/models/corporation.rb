class Corporation < ActiveRecord::Base 
  belongs_to :category
  validates :name, presence: true, length: { maximum: 50 }
  
  def self.search(search)
    if search
      Corporation.where(['name LIKE ?', "%#{search}%"])
    else
    end
  end
end
