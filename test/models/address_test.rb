require "test_helper"

describe Address do
  subject { Address }

  describe "db" do

    specify "columns & names" do

      must_have_column(:line_1, :string)
      must_have_column(:line_2, :string)
      must_have_column(:city, :string)
      must_have_column(:state, :string)
      must_have_column(:zip, :string)
      must_have_column(:addressable_id, :integer)
      must_have_column(:addressable_type, :string)
    end
  end

  describe "associations" do

    specify "belongs_to" do

      must_belong_to(:addressable)
    end
  end
end
