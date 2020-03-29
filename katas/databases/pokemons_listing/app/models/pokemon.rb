class Pokemon < ApplicationRecord
  has_one :ancestor,
          class_name: 'Pokemon',
          foreign_key: 'evolution_id'

  belongs_to :evolution,
             class_name: 'Pokemon',
             foreign_key: 'evolution_id',
             optional: true

  has_and_belongs_to_many :categories

  validates :name, presence: true, length: { minimum: 2 }
end
