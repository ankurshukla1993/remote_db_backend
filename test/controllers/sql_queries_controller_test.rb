require 'test_helper'

class SqlQueriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sql_query = sql_queries(:one)
  end

  test "should get index" do
    get sql_queries_url
    assert_response :success
  end

  test "should get new" do
    get new_sql_query_url
    assert_response :success
  end

  test "should create sql_query" do
    assert_difference('SqlQuery.count') do
      post sql_queries_url, params: { sql_query: {  } }
    end

    assert_redirected_to sql_query_url(SqlQuery.last)
  end

  test "should show sql_query" do
    get sql_query_url(@sql_query)
    assert_response :success
  end

  test "should get edit" do
    get edit_sql_query_url(@sql_query)
    assert_response :success
  end

  test "should update sql_query" do
    patch sql_query_url(@sql_query), params: { sql_query: {  } }
    assert_redirected_to sql_query_url(@sql_query)
  end

  test "should destroy sql_query" do
    assert_difference('SqlQuery.count', -1) do
      delete sql_query_url(@sql_query)
    end

    assert_redirected_to sql_queries_url
  end
end
