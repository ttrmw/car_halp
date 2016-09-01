class Model < ActiveRecord::Base
  belongs_to :manufacturer
  has_many :cars
  has_many :flaws

end
