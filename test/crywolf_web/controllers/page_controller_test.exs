defmodule CrywolfWeb.PageControllerTest do
  use CrywolfWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Hello Crywolf!"
  end
end
