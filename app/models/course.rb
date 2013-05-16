class Course
  include Mongoid::Document

  validates_presence_of :CourseTitle

  has_and_belongs_to_many :users
  embeds_many :lectures

  field :CourseTitle, type: String
  field :StartTime1, type: String
  field :EndTime1, type: String
  field :MeetsOn1, type: String
  field :Building1, type: String
  field :Room1, type: String
  field :Instructor1Name, type: String
  field :CallNumber, type: Integer
end
