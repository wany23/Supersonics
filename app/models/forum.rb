class Forum
  include Mongoid::Document

  has_many :topics, :dependent => :destroy
  
  field :name, type: String
  field :description, type: String
end
