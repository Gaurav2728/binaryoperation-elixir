defmodule BinaryoperationWeb.PageController do
  use BinaryoperationWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
