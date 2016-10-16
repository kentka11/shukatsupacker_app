class Corporation < ActiveRecord::Base 
  belongs_to :category
  validates :name, presence: true, length: { maximum: 50 }
  
  #def self.search(search)
   #   Corporation.search([name_cont, "#{search}"])
  #end
end
