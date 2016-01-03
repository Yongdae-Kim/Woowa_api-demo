require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'create a new post' do
    post = Post.new
    post.title = '테스트 제목'
    post.body = '테스트 내용'
    assert post.save
  end

  test 'cannot create a new post without title' do
    post = Post.new
    post.body = '테스트 내용'
    assert_not post.save
  end

  test 'cannot create a new post without body' do
    post = Post.new
    post.title = '테스트 제목'
    assert_not post.save
  end
end
