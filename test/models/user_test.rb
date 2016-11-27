require "test_helper"

describe User do

  subject { User }

  describe "db" do

    specify "columns & types" do

      must_have_column(:encrypted_password, :string)
      must_have_column(:reset_password_token, :string)
      must_have_column(:reset_password_sent_at, :datetime)
      must_have_column(:remember_created_at, :datetime)
      must_have_column(:sign_in_count, :integer)
      must_have_column(:sign_in_count, :integer)
      must_have_column(:current_sign_in_at, :datetime)
      must_have_column(:last_sign_in_ip, :inet)
      must_have_column(:current_sign_in_ip, :inet)
      must_have_column(:last_sign_in_ip, :inet)
      must_have_column(:name, :string)
      must_have_column(:created_at, :datetime)
      must_have_column(:updated_at, :datetime)
    end

    specify "indexes" do

      must_have_index(:email)
    end
  # end

  specify "associations" do

    must_have_many(:addresses)
    must_have_many(:practice_areas_users)
    must_have_many(:practice_areas)
    must_have_many(:practice_locales_users)
    must_have_many(:practice_locales)
  end

  # describe "accepts_nested_attributes" do

  #   Given(:user_attrs) { FactoryGirl.attributes_for(:user) }
  #   Given(:vehicle) { FactoryGirl.create(:vehicle) }
  #   Given(:ownership_attrs) { FactoryGirl.attributes_for(:ownership ) }
  #   Given(:vehicle_attrs) { FactoryGirl.attributes_for(:vehicle)}

  #   describe "create user" do

  #     Given(:attrs) { user_attrs }

  #     Then { assert_difference("User.count") { User.create(attrs) } }
  #   end

  #   describe "create nested ownerships" do

  #     Given(:attrs) { user_attrs.merge(ownerships_attributes: [
  #       ownership_attrs.merge(vehicle_id: vehicle.id)])}

  #     Then do
  #       assert_difference(["User.count", "Ownership.count"]) do
  #         user = User.create(attrs)
  #       end
  #     end
  #   end

  #   describe "create nested vehicle" do

  #     Given(:attrs) { user_attrs.merge( ownerships_attributes: [
  #       ownership_attrs.merge(
  #             vehicle_attributes: FactoryGirl.attributes_for(:vehicle) ) ] ) }

  #     Then { assert_difference( [
  #       "User.count", "Ownership.count", "Vehicle.count"]) {
  #         user = User.create(attrs) } }
  #   end
  end
end
