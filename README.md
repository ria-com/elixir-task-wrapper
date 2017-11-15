# Ria.Task

  Ria.Task - wrapper for Elixir.Task

  Task.await does not wait over timeout and does not throw exeptions

```elixir
alias Ria.Task
# ...
task = Task.async(fn -> do_some_work() end)
# ...
res = Task.await(task, 100)
```

## Installation

```elixir
def deps do
  [{:ria_task, git: "https://github.com/ria-com/elixir-task-wrapper.git"}]
end
```

## Testing

```bash
[elixir-task-wrapper]# mix test
```
