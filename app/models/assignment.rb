class Assignment
  include Mongoid::Document

  belongs_to :course

  field :due_date, type: String
  field :number, type: String
  field :name, type: String
end
