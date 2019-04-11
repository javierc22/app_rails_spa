require 'rails_helper'

RSpec.describe "Categories", type: :request do
    describe "GET /api/categories" do
        it "debe regresar el listado de categorias" do
            get categories_path
            expect(response).to have_http_status(200)
        end
    end

    # Método SHOW
    describe "GET /api/categories/:id" do
        # Creo una categoría de prueba con los datos de "Factories"
        let(:category) { create :category }

        it "debe regresar una categoria" do
            get categories_path category.id
            expect(response).to have_http_status(200)
        end
    end
end
