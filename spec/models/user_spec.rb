
require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { create(:user) }

  it { is_expected.to have_many(:registered_applications) }

     describe "attributes" do
       it "has name and email attributes" do
         expect(user).to have_attributes(email: user.email, password: user.password)
       end

    end

end
