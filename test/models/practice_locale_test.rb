require "test_helper"

describe PracticeLocale do

  subject { PracticeLocale }

  describe "db" do

    specify "columns & types" do

      must_have_column(:name, :string)
      must_have_column(:address_id, :integer)
      must_have_column(:description, :text)
      must_have_column(:created_at, :datetime)
      must_have_column(:updated_at, :datetime)
    end

    specify "indexes" do

    end

  end

  describe "associations" do

    specify "has_many" do

      must_have_many(:addresses)
      must_have_many(:users)
      must_have_many(:practice_locales_users)
    end
  end
end
