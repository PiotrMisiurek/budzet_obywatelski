json.array!(@budgets) do |budget|
  json.extract! budget, :id, :name, :description, :amount, :amount_per_project
  json.url budget_url(budget, format: :json)
end
