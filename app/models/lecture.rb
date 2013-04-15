class Lecture
  include Mongoid::Document

  belongs_to :course
  has_many :uploads

  field :time, type: String
  field :date, type: String
  field :description, type: String
end
