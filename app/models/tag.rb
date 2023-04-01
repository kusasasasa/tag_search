class Tag < ApplicationRecord
    has_many :tag_ralations, dependent: :destroy
    has_many :list, through: tag_ralations, dependent: :destroy
end
