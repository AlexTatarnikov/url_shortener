class Link < ApplicationRecord
  validates :url, :code, presence: true
  validates :code, uniqueness: true
end
