defmodule Crywolf.PageController do
  use Crywolf.Web, :controller
  use Honeybadger.Plug

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end

  def runtime_error(conn, _params) do
    raise RuntimeError, message: "Wolf!"
  end
end
