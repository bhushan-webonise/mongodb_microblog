class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  field :commenter, type: String
  field :body, type: String
  belongs_to :post
  has_many :comments, foreign_key: :comment_id
  belongs_to :comment, class_name: 'Comment'
end
