require "test_helper"

class StadiumsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def index
    @stadiums = Stadium.all
  end
end
