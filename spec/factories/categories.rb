FactoryBot.define do
    factory :category do
        sequence(:name) { |n| "Categoria #{n}" }
        description { "Descripcion de prueba" }
    end

    trait :with_movies do
        # después de crear la categoría, crear una lista de 3 peliculas
        after :create do |category|
            create_list :movie, 3, category: category
        end
    end
end
