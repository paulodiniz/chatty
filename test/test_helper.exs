ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Chatty.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Chatty.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Chatty.Repo)

