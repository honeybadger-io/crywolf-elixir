defmodule Crywolf.PageControllerTest do
  use Crywolf.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert html_response(conn, 200) =~ "Raise a RuntimeError"
  end
end
