defmodule Grizzly.ZWave.Commands.WakeUpNoMoreInformation do
  @moduledoc """
  This module implements the WAKE_UP_NO_MORE_INFORMATION command of the
  COMMAND_CLASS_WAKE_UP command class

  Params: - none -

  """

  @behaviour Grizzly.ZWave.Command

  alias Grizzly.ZWave.Command
  alias Grizzly.ZWave.CommandClasses.WakeUp

  @impl true
  def new(_opts \\ []) do
    command = %Command{
      name: :wake_up_interval_get,
      command_byte: 0x08,
      command_class: WakeUp,
      impl: __MODULE__
    }

    {:ok, command}
  end

  @impl true
  def encode_params(_command) do
    <<>>
  end

  @impl true
  def decode_params(_binary) do
    {:ok, []}
  end
end
