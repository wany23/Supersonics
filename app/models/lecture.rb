class Lecture
  include Mongoid::Document

  embedded_in :course
  embeds_one :assignment
  has_one :upload, as: :document

  field :time, type: String
  field :date, type: String
  field :description, type: String
end
