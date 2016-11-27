require "test_helper"

describe PracticeAreasUser do

  subject { PracticeAreasUser }

  describe "db" do

    specify "columns & types" do

      must_have_column(:user_id, :integer)
      must_have_column(:practice_area_id, :integer)
    end
  end

  describe "associations" do

    specify "belongs_to" do

      must_belong_to(:user)
      must_belong_to(:practice_area)
    end
  end
  let(:practice_areas_user) { PracticeAreasUser.new }
end
