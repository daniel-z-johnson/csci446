require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  setup do
    @article = articles(:one)
    @update = {
      :author => "Pattrick",
      :title => "Lorem Ipsum",
      :body => "Estuans interius ira vehementi Estuans interius ira vehementi Sephiroth. Sors immanis Et inanis Sors immanis Et inanis.
                Veni, venim venias, Ne me mori facias. Gloriosa"           
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      post :create, :article => @article.attributes
    end

    assert_redirected_to article_path(assigns(:article))
  end

  test "should show article" do
    get :show, :id => @article.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @article.to_param
    assert_response :success
  end

  test "should update article" do
    put :update, :id => @article.to_param, :article => @article.attributes
    assert_redirected_to article_path(assigns(:article))
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete :destroy, :id => @article.to_param
    end

    assert_redirected_to articles_path
  end
end
