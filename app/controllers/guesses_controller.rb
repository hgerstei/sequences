class GuessesController < ActionController::Base

def index
  # params = ["frist_number" => "4", "second_number" => "5" etc.]

  # @first = params["first_number"]
  # @second = params["second_number"]
  # @third = params["third_number"]

g = Guess.new
g.first_num = params['first_number']
g.second_num = params['second_number']
g.third_num = params['third_number']
g.save

@list = Guess.all
render("guesses/index.html.erb")
end

def answers
  # params = {"rule"=>"Hi there"}

  @user_answer = params["rule"]

render("guesses/answers.html.erb")
end
end
