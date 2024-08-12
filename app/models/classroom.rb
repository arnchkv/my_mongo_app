class Classroom
  include Mongoid::Document
  include Mongoid::Timestamps
  field :section, type: String
  field :building, type: Integer
  field :floor, type: Integer
end
