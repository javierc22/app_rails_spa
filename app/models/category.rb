class Category < ApplicationRecord
    # Valida que el nombre esté presente
    validates :name, presence: true

    # valida que el nombre sea único y que no sea sensible a mayúsculas
    validates :name, uniqueness: { case_sensitive: false }
end
