defmodule TestThatJson.ESpec.Assertions.HaveJsonProperties do
  use ESpec.Assertions.Interface

  alias TestThatJson.Helpers

  defp match(subject, value) do
    result = Helpers.has_json_properties(subject, value)
    {result, result}
  end

  defp success_message(subject, value, _result, positive) do
    has = if positive, do: "has", else: "doesn't have"
    "`#{inspect subject}` #{has} JSON properties `#{inspect value}`."
  end

  defp error_message(subject, value, _result, positive) do
    to = if positive, do: "to have", else: "not to have"
    but = if positive, do: "doesn't", else: "does"
    "Expected `#{inspect subject}` #{to} JSON properties `#{inspect value}`, but it #{but}."
  end
end
