module RequestSpecHelper
    # Parsear todo el contenido a formato JSON
    def json
        JSON.parse(response.body)
    end
end