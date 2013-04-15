class Course
  include Mongoid::Document

  has_and_belongs_to_many :users
  has_many :lectures
  has_many :assignments

  field :title, type: String
  field :times, type: String
  field :days, type: String
  field :department, type: String
  field :number, type: String
  field :room, type: String
  field :professor, type: String
  field :call_number, type: Integer
end
