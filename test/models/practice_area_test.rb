require "test_helper"

describe PracticeArea do

  subject { PracticeArea }

  describe "db" do

    specify "columns & types" do

      must_have_column(:name, :string)
      must_have_column(:description, :text)
      must_have_column(:created_at, :datetime)
      must_have_column(:updated_at, :datetime)
    end

    specify "indexes" do

    end

  end

  specify "associations" do

    must_belong_to(:user)


  end
end