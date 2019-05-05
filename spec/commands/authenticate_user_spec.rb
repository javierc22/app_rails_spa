require 'rails_helper'

RSpec.describe AuthenticateUser do

    let(:user) { create :user, password: 'password'}

    subject(:valid_auth) { described_class.new(user.email, 'password') } # autenticación válida
    subject(:invalid_auth) { described_class.new('foo', 'bar') } # autenticación invalida

    
    describe ".call" do
        # Contexto con credenciales válidas
        context "when valid credentials" do
            it "returns an auth token" do
                token = valid_auth.call
                expect(token).not_to be_nil # Espera a que el "token" no sea nulo
            end
        end

        # Contexto con credenciales inválidas
        context "when invalid credentials" do
            it "raises an authentication error" do
                result = invalid_auth.call
                expect(result.errors[:user_authentication]).to eq ["Invalid credentials"] # Espera que el resultado sea un error
            end
        end
    end
        
end
