defmodule Tindahan.Web.PageController do
  use Tindahan.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
