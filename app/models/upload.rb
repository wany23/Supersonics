class Upload
  include Mongoid::Document

  belongs_to :lecture

  field :time_received, type: String
  field :date_received, type: String
  field :title, type: String
  field :url, type: String
end
