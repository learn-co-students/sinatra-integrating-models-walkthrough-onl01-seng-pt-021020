require_relative 'config/environment'
require_relative 'models/text_analyzer.rb' # With this code, we can now reference the TextAnalyzer class and invoke its new method

class App < Sinatra::Base
  # renders the index.erb page
  get '/' do
    erb :index
  end

  # receives the form data through params and renders the results page
  post '/' do
    #text_from_user = params[:user_text]

    @analyzed_text = TextAnalyzer.new(params[:user_text]) # now have an instance of TextAnalyzer saved to an instance variable, which we can call 

    erb :results
  end
end
