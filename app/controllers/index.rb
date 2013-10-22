require 'pry'

get '/' do
  erb :index
end

get '/_all_good' do
  erb :_all_good
end

post '/tweet' do
  # binding.pry
  if request.xhr?
    Twitter.update(params[:tweet])
    erb :_all_good, layout: false
  else
    erb :index
  end
end

# get '/auth' do
#   get_access_token
#   erb :tweet
# end

# get '/request' do
#   redirect request_token.authorize_url
#   # @user = Twitter.user_timeline(params[:username])
#   # erb :user_view
# end

# post '/tweet/new' do
#   tweet = client.update(params[:text])
#   if tweet
#     tweet.text
#   else
#     status 500
#     "Oh neerrr, Something bad Happened!"
#   end
# end