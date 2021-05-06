class User < ApplicationRecord
  validates :email, presence: true, uniqueness: { case_sensitive: true }
  validates :name, presence: true
end
