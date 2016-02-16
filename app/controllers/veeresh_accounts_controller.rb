class VeereshAccountsController < ApplicationController
  before_action :set_veeresh_account, only: [:show, :edit, :update, :destroy]

  # GET /veeresh_accounts
  # GET /veeresh_accounts.json
  def index
    @veeresh_accounts = VeereshAccount.all
  end

  # GET /veeresh_accounts/1
  # GET /veeresh_accounts/1.json
  def show
  end

  # GET /veeresh_accounts/new
  def new
    @veeresh_account = VeereshAccount.new
  end

  # GET /veeresh_accounts/1/edit
  def edit
  end

  # POST /veeresh_accounts
  # POST /veeresh_accounts.json
  def create
    @veeresh_account = VeereshAccount.new(veeresh_account_params)

    respond_to do |format|
      if @veeresh_account.save
        format.html { redirect_to @veeresh_account, notice: 'Veeresh account was successfully created.' }
        format.json { render :show, status: :created, location: @veeresh_account }
      else
        format.html { render :new }
        format.json { render json: @veeresh_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /veeresh_accounts/1
  # PATCH/PUT /veeresh_accounts/1.json
  def update
    respond_to do |format|
      if @veeresh_account.update(veeresh_account_params)
        format.html { redirect_to @veeresh_account, notice: 'Veeresh account was successfully updated.' }
        format.json { render :show, status: :ok, location: @veeresh_account }
      else
        format.html { render :edit }
        format.json { render json: @veeresh_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /veeresh_accounts/1
  # DELETE /veeresh_accounts/1.json
  def destroy
    @veeresh_account.destroy
    respond_to do |format|
      format.html { redirect_to veeresh_accounts_url, notice: 'Veeresh account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_veeresh_account
      @veeresh_account = VeereshAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def veeresh_account_params
      params.require(:veeresh_account).permit(:no_of_tickets_online, :no_of_tickets_box, :total_amt_per_day, :booking_id, :cinema_id, :user_id)
    end
end
