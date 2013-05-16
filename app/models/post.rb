class Post
  include Mongoid::Document

  belongs_to :topic
  
  field :content, type: String

end
