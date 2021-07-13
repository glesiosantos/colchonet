class User < ApplicationRecord
  validates_presence_of :email, :fullname, :location, :password
  validates_confirmation_of :password
  validates_length_of :bio, mininum: 30, allow_blank: false
  validates_format_of :email, with: /\A[^@\s]+@[^@\s]+\z/
  validates_uniqueness_of :email
end
