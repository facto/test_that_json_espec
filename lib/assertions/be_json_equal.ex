defmodule TestThatJson.ESpec.Assertions.BeJsonEqual do
  use ESpec.Assertions.Interface

  alias TestThatJson.Helpers

  defp match(subject, value) when is_binary(value) do
    result = Helpers.is_json_equal(subject, value)
    {result, result}
  end

  defp success_message(subject, value, _result, positive) do
    to = if positive, do: "equals", else: "doesn't equal"
    "`#{inspect subject}` #{to} `#{inspect value}`."
  end

  defp error_message(subject, value, _result, positive) do
    to = if positive, do: "to equal", else: "not to equal"
    but = if positive, do: "doesn't", else: "does"
    "Expected `#{inspect subject}` #{to} `#{inspect value}`, but it #{but}."
  end
end
