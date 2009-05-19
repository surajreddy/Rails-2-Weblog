require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "should create comment and redirect to post without javascript" do
    p = Post.create!(:title => 'hello', :body => 'world')
    post :create, :post_id => p.id, :comment => { :body => 'nice!' }
    assert_redirected_to post_url(p)
    assert_equal 'nice!', p.comments.first.body
  end
  
  test "should create comment and render RJS template for ajax" do
    p = Post.create!(:title => 'hello', :body => 'world')
    post :create, :format => 'js', :post_id => p.id, :comment => { :body => 'nice!' }
    assert_template 'create.js.rjs'
    assert_equal 'nice!', p.comments.first.body
  end

  # test "should get index" do
    # get :index
    # assert_response :success
    # assert_not_nil assigns(:comments)
  # end

  # test "should get new" do
    # get :new
    # assert_response :success
  # end

  # test "should create comment" do
    # assert_difference('Comment.count') do
      # post :create, :comment => { }
    # end

    # assert_redirected_to comment_path(assigns(:comment))
  # end

  # test "should show comment" do
    # get :show, :id => comments(:one).to_param
    # assert_response :success
  # end

  # test "should get edit" do
    # get :edit, :id => comments(:one).to_param
    # assert_response :success
  # end

  # test "should update comment" do
    # put :update, :id => comments(:one).to_param, :comment => { }
    # assert_redirected_to comment_path(assigns(:comment))
  # end

  # test "should destroy comment" do
    # assert_difference('Comment.count', -1) do
      # delete :destroy, :id => comments(:one).to_param
    # end

    # assert_redirected_to comments_path
  # end
end
