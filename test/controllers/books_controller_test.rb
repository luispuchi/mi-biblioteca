require 'test_helper'


class BooksControllerTest < ActionController::TestCase
  test 'get index' do
  get :index
  assert_response :success
  assert_template :index
  assert_not_nil assigns(:books)
  
  end

  test 'post new' do
    params = {
    title: "Another Title",
    author: "Jane Doe",
    status: "prestado",
    gener: "novela",
    start_date: 2020-05-03,
    end_date: 2020-06-20,
    created_at: DateTime.now,
    updated_at: DateTime.now
    }


    post :index, params: {book: params}
    assert_response :success
  end

 

  Warning[:deprecated] = false
end