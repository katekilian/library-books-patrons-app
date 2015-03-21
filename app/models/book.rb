class Book < ActiveRecord::Base

  belongs_to :library
  has_many :loans

end
