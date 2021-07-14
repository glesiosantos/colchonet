class User < ApplicationRecord
  validates_presence_of :email, :fullname, :location
  validates_length_of :bio, mininum: 30, allow_blank: false
  validates_format_of :email, with: /\A[^@\s]+@[^@\s]+\z/
  validates_uniqueness_of :email
  has_secure_password
end
