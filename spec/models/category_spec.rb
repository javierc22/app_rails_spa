require 'rails_helper'

RSpec.describe Category, type: :model do
    # Una Categoria tienes muchas peliculas
    it { should have_many(:movies) } 

    # La categoría debe tener nombre
    it { should validate_presence_of :name}

    # el nombre debe ser único y sensible a mayusculas
    it { should validate_uniqueness_of(:name).case_insensitive }

    # Aceptar atributos heredados
    it { should accept_nested_attributes_for(:movies).allow_destroy(true) }
end
