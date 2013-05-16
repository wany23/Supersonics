class User
  include Mongoid::Document

  def to_param
      last_name
  end

  has_and_belongs_to_many :courses
  has_many :uploads

  ROLES = %w[Admin Student]

  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :role, type: String, default: "Student"

  validates :email, :presence => true, :uniqueness => true
  validates_presence_of :first_name
end
