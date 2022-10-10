defmodule Exmeal.Repo.Migrations.CreateMealsTable do
  use Ecto.Migration

  def change do
    # TO DO
    create table(:meals) do
      add :description, :string
      add :calories, :integer
      add :date, :date, null: false
      add :user_id, references(:users, type: :binary_id, on_delete: :delete_all)

      # inserted_at e updated_at
      timestamps()
    end
  end
end
