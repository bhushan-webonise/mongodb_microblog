class Author
  include Mongoid::Document
  include Mongoid::Timestamps
  field :author_name, type: String
end
