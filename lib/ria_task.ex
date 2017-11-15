defmodule Ria.Task do
  @moduledoc """
  Ria.Task - wrapper for Elixir.Task
  Task.await does not wait over timeout and does not throw exeptions

    alias Ria.Task

    task = Task.async(fn -> do_some_work() end)
    do_some_other_work()
    res = Task.await(task)

  """

  def async(func), do: Task.async(func)
  def start(func), do: Task.start(func)
  def start_link(func), do: Task.start_link(func)

  @doc """
  Awaits a task reply and returns it.
  Returns nil if something went wrong or timeout exceeds
  ## Examples

      iex> Ria.Task.await(Ria.Task.async(fn->:timer.sleep(100) end))
      :ok

      iex> Ria.Task.await(Ria.Task.async(fn->:timer.sleep(100) end), 10)
      nil

  """
  def await(task, timeout \\ 5_000) do
    case Task.yield(task, timeout) do
      {:ok, term} -> term
      _ -> nil
    end
  end
end