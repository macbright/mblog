class Post < ApplicationRecord
    belongs_to :category
    belongs_to :users
    has_many :comments

    validates :title, presence: true
    validates :category_id, presence: true 
    validates :body, presence: true 
    

end
