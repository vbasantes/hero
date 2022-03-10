class HomeController < ApplicationController
  before_action :common, :only => [:index, :team]

  def common
    @superhero_name = Faker::Superhero.name
    @superhero_power = Faker::Superhero.power
    @corp_super_power = Faker::Company.buzzword
    @corp_job_title = Faker::Company.profession

    @rand_num = rand(1..1000)
    @sets = ["set1", "set2", "set3", "set4"]
    @bgs = ["bg0", "bg1", "bg2"]

    @avatar_url = Faker::Avatar.image(@rand_num, "300x300", "png", @sets.shuffle.first, @bgs.shuffle.first)
  end

  def index
  end

  def team

  end
end
