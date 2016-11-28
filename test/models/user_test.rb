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
  end

  specify "associations" do

    must_have_many(:addresses)
    must_have_many(:practice_areas_users)
    must_have_many(:practice_areas)
    must_have_many(:practice_locales_users)
    must_have_many(:practice_locales)
    must_have_many(:articles)
  end
end
