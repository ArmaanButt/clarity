json.result do
  json.array! @results, :question, :answer, :count
end
