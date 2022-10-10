defmodule Exmeal.Meal do
  use Ecto.Schema

  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  @required_params [:description, :date, :calories, :user_id]
  @derive {Jason.Encoder, only: @required_params ++ [:id]}

  schema "meals" do
    # TO DO
    field :calories, :integer
    field :date, :date
    field :description, :string
    field :user_id, :binary_id

    timestamps()

  end

  def changeset(struct \\ %__MODULE__{}, attrs) do
    struct
    |> cast(attrs, @required_params)
    |> validate_required(@required_params)
  end
end
