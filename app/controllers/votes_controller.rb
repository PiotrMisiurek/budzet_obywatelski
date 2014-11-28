class VotesController < ApplicationController
  before_action :set_parents

  def create
    @vote = Vote.new
    @vote.user = current_user
    @vote.budget = @budget
    @vote.project = @project
    @vote.save
    redirect_to @budget, notice: "Dziękujemy za oddanie głosu na projekt #{@project.name}"
  end

  private

  def set_parents
    @budget = Budget.find(params[:budget_id])
    @project = @budget.projects.find(params[:project_id])
  end

end