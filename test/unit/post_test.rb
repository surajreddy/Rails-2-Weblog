require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  
  test "should not save post without title" do
    post = Post.new
    assert !post.save 
  end 

  test "should not save post without a body" do
    post = Post.new(:title => 'hello')
    assert !post.save 
  end 
  
  # test "should create comment and redirect to post without javascript" do
    # p = Post.create!(:title => 'hello', :body => 'world')
    # post :create, :post_id => p.id, :comment => { :body => 'nice!' }
    # assert_redirected_to post_url(p)
    # assert_equal 'nice!', p.comments.first.body
  # end  

  # test "the truth" do
    # assert true
  # end
end
