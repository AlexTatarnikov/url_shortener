class Link < ApplicationRecord
  has_many :redirects, dependent: :delete_all

  validates :url, :code, presence: true
  validates :code, uniqueness: true
end
