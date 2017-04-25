require 'rails_helper'

RSpec.describe Product, type: :model do

  describe "Product relationships"
    let(:user1) { create :user }
    let(:user2) { create :user }

    let(:product1) { create :product, user: user1 }
    it "belongs to a user" do
      expect(product1.user_id).to eq(user1.id)


  end
end
