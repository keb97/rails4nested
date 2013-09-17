class Book < ActiveRecord::Base
  has_many :dedications, dependent: :destroy

  accepts_nested_attributes_for :dedications
end
