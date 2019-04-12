class Category < ApplicationRecord
    # Una categoria tiene muchas peliculas
    has_many :movies

    # Valida que el nombre esté presente
    validates :name, presence: true

    # valida que el nombre sea único y que no sea sensible a mayúsculas
    validates :name, uniqueness: { case_sensitive: false }

    accepts_nested_attributes_for :movies, allow_destroy: true
end
