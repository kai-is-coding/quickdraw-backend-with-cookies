class Draw < ApplicationRecord
  belongs_to :playroom, optional: true
end
