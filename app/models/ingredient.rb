class Ingredient < ApplicationRecord
    has_many :doses
    validates :name, uniqueness: true, presence: true
end

# 4.3 has_many Association Reference
# The has_many association creates a one-to-many relationship with another model. 
# In database terms, this association says that the other class will have a foreign key 
# that refers to instances of this class.

# Só de colocar has_many, você já impede que um ingrediente que possui doses 
# associadas seja deletado.