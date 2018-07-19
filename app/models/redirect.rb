class Redirect < ApplicationRecord
  belongs_to :link

  validates :request_ip, presence: true
end
