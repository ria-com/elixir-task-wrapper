# Ria.Task

  Ria.Task - wrapper for Elixir.Task

  Task.await does not wait over timeout and does not throw exeptions

```elixir
alias Ria.Task
# ...
task = Task.async(fn -> do_some_work() end)
# ...
res = Task.await(task)
```

## Installation

```elixir
def deps do
  [{:elixir_task, "~> 0.1.0"}]
end
```

## Testing

```bash
[elixir-task-wrapper]# mix test
```
