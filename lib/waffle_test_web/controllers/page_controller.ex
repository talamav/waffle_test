defmodule WaffleTestWeb.PageController do
  use WaffleTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
