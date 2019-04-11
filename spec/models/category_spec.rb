require 'rails_helper'

RSpec.describe Category, type: :model do
    # La categoría debe tener nombre
    it { should validate_presence_of :name}

    # el nombre debe ser único y sensible a mayusculas
    it { should validate_uniqueness_of(:name).case_insensitive }
end
