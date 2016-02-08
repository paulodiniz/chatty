defmodule Chatty.ChatController do
  use Chatty.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def join(conn, %{"nickname" => nickname}) do
    render conn, "chatroom.html", nickname: nickname
  end

end