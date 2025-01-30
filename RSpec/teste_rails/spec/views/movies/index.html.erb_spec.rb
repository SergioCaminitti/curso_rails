require 'rails_helper'

RSpec.describe "movies/index", type: :view do
  before(:each) do
    assign(:movies, [
      Movie.create!(
        title: "Title",
        description: "MyText",
        director: "Director",
        duration: 2
      ),
      Movie.create!(
        title: "Title",
        description: "MyText",
        director: "Director",
        duration: 2
      )
    ])
  end

  it "renders a list of movies" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Director".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
