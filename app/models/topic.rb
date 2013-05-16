class Topic
  include Mongoid::Document

  belongs_to :topic
  has_many :posts, :dependent => :destroy

  field :name, type: String
  field :last_poster_id, type: String
  field :last_post_at, type: Time
  field :forum_id, type: String
end
