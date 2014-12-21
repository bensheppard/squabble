class DisputesController < ApplicationController
  def show
    render json: dispute.to_json
  end

  def index
    render json: Dispute.all.to_a.to_json
  end

  def create
    @dispute = Dispute.new(dispute_params)

    if @dispute.save
      render text: "GREAT SUCCESS"
    else
      render text: "There were errors :("
    end
  end

  private

  def dispute
    Dispute.find(params[:id])
  end

  def dispute_params
    return {} unless params[:dispute].present?

    params.require(:dispute).
           permit(:description, :argument_for, :argument_against)
  end
end
