class Dashboard < ApplicationRecord
    belongs_to :user
    has_many :task, dependent: :destroy
    validates :user_id, presence: true
end
