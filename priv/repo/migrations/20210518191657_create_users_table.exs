defmodule Exmeal.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def change do
    # TO DO
    create table(:users) do
      add :name, :string
      add :cpf, :string
      add :email, :string
    end
  end
end
