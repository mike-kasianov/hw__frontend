defmodule FrontendWeb.HomeControllerTest do
  use FrontendWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome to HelloWorld"
  end
end
