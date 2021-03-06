require 'spec_helper'

describe "teams/edit" do
  before(:each) do
    @team = assign(:team, stub_model(Team,
      :name => "MyString",
      :desgination => "MyString",
      :email => "MyString",
      :facebook_url => "MyString",
      :github_id => "MyString",
      :personal_website => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit team form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", team_path(@team), "post" do
      assert_select "input#team_name[name=?]", "team[name]"
      assert_select "input#team_desgination[name=?]", "team[desgination]"
      assert_select "input#team_email[name=?]", "team[email]"
      assert_select "input#team_facebook_url[name=?]", "team[facebook_url]"
      assert_select "input#team_github_id[name=?]", "team[github_id]"
      assert_select "input#team_personal_website[name=?]", "team[personal_website]"
      assert_select "textarea#team_description[name=?]", "team[description]"
    end
  end
end
