require 'test_helper'

class UserFlowsTest < ActionController::IntegrationTest
  fixtures :all

  test "Prevent editing without authentication" do
    get "/posts/1/edit" 
    assert_response(401) #401 - No authentication
  end

  # Useful asserts
    #assert_response :success
    #assert_template "posts/index"  
  
  #Not working yet.
  # test "Testing login and browse" do
    # get("/posts/1/edit", nil, :authorization => ActionController::HttpAuthentication::Basic.encode_credentials('admin','notasecret')) 
    # assert_equal 200, status
  # end

    
    #posts/1/edit
    
# * The action of the controller you are requesting. This can be in the form of a string or a symbol.
# * An optional hash of request parameters to pass into the action (eg. query string parameters or post variables).
# * An optional hash of session variables to pass along with the request.
# * An optional hash of flash values.
# get(:show, {'id' => "12"}, {'user_id' => 5}) 
# get(:view, {'id' => '12'}, nil, {'message' => 'booya!'}) 

    # post_via_redirect "/login", :username => users(:avs).username, :password => users(:avs).password 
    # assert_equal '/welcome', path 
    # assert_equal 'Welcome avs!', flash[:notice] 
    
    # https!(false)  
    # get "/posts/all"  
    # assert_response :success  
    # assert assigns(:products)
end
