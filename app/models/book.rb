class Book < ActiveRecord::Base
  has_many :dedications

  accepts_nested_attributes_for :dedications
end
