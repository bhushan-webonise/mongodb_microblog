class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :body, type: String
  has_many :comments
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 2 }
end
