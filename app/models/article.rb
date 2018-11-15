class Article < ActiveRecord::Base
    belongs_to :user
    validates :title, presence: true, length: { minimum: 3, maximum: 50 }
# <! ------------------------>  
    validates :user_id, presence: true
# <! ------------------------>  
    def self.search(search)
        where('title like ?', '%search%')
    end
end 

