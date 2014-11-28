class VotesController < ApplicationController
  before_action :set_parents
  before_action :cheating_protection

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

  def cheating_protection
    if @budget.voted_by?(current_user)
      redirect_to @budget, error: 'Nie można głosować dwa razy w ramach tego samego budżetu' and return
    end
  end

end