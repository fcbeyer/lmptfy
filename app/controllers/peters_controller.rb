class PetersController < ApplicationController
  # GET /peters
  # GET /peters.json
  
  def email_recipients
  	notification_data = []
  	if params[:recipients].eql?('peters')
  		#email the peters
  		PeterMailer.email_the_peters(params[:from],params[:subject],params[:body],to_list).deliver
  	else
  		#email a random peter
  		notification_data.push("rick.beyer@gmail.com")
  		PeterMailer.email_random_peter.deliver
  	end
  	respond_to do |format|
  		format.json { render json: notification_data }
      format.html { render html: notification_data }
    end
  end
  
  def index
    @peters = Peter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @peters }
    end
  end
  
  def get_answers
  	respond_to do |format|
      format.html # show.html.erb
      format.json { render json: [:hi => 'guys'] }
    end
  end

  # GET /peters/1
  # GET /peters/1.json
  def show
    @peter = Peter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @peter }
    end
  end

  # GET /peters/new
  # GET /peters/new.json
  def new
    @peter = Peter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @peter }
    end
  end

  # GET /peters/1/edit
  def edit
    @peter = Peter.find(params[:id])
  end

  # POST /peters
  # POST /peters.json
  def create
    @peter = Peter.new(params[:peter])

    respond_to do |format|
      if @peter.save
        format.html { redirect_to @peter, notice: 'Peter was successfully created.' }
        format.json { render json: @peter, status: :created, location: @peter }
      else
        format.html { render action: "new" }
        format.json { render json: @peter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /peters/1
  # PUT /peters/1.json
  def update
    @peter = Peter.find(params[:id])

    respond_to do |format|
      if @peter.update_attributes(params[:peter])
        format.html { redirect_to @peter, notice: 'Peter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @peter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peters/1
  # DELETE /peters/1.json
  def destroy
    @peter = Peter.find(params[:id])
    @peter.destroy

    respond_to do |format|
      format.html { redirect_to peters_url }
      format.json { head :no_content }
    end
  end
end
