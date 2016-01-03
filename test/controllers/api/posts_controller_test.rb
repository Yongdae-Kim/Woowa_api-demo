require 'test_helper'

module Api
  class PostsControllerTest < ActionDispatch::IntegrationTest
    setup do
      Post.create!(title: '제목', body: '내용')
    end

    test 'GET #index' do
      get api_posts_url, params: { format: :json }
      assert_response :success
      assert_includes response.body, '제목'
      assert_not_includes response.body, '없는 내용'
    end
  end
end
