class Word < ApplicationRecord
  attribute :details, :json
  has_many :marks, as: :markable
end
