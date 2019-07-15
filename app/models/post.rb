class Post < ApplicationRecord
    belongs_to :category
    belongs_to :user
    has_many :comments

    validates :title, presence: true
    validates :category_id, presence: true 
    validates :body, presence: true 

    has_attached_file :image, :default_url => ":style/rails1.png"
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\z/
   
    def self.search(query)
        where("title like ? OR body like ?", "%#{query}%", "%#{query}%")
    end
end
