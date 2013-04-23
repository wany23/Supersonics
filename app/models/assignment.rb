class Assignment
  include Mongoid::Document

  embedded_in :lecture
  has_many :uploads

  field :due_date, type: String
  field :number, type: String
  field :name, type: String
end
