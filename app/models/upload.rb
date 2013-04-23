class Upload
  include Mongoid::Document

  belongs_to :assignment
  belongs_to :lecture
  belongs_to :user

  field :time_received, type: String
  field :date_received, type: String
  field :title, type: String
  field :url, type: String

  belongs_to :document, polymorphic: true
end
