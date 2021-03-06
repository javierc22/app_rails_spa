require 'rails_helper'

RSpec.describe JsonWebToken do
    subject { described_class } # obtener nombre de la clase JsonWebToken

    let(:user) { create :user, password: '123123123' }
    let(:token) { token_generator(user.id) }

    describe ".encode" do
        it "returns valid token" do
            encoded = subject.encode(user_id: user.id) # subject = JsonWebToken
            expect(encoded.length).to eq 105
        end
    end # describe ".encode"

    describe ".decode" do
        it "returns payload content" do
            decoded = subject.decode(token) # subject = JsonWebToken
            expect(decoded[:user_id]).to eq user.id
        end
    end # describe ".decode"
end