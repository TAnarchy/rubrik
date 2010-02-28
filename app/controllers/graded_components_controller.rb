class GradedComponentsController < ApplicationController
  # GET /graded_components
  # GET /graded_components.xml
  def index
    @graded_components = GradedComponent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @graded_components }
    end
  end

  # GET /graded_components/1
  # GET /graded_components/1.xml
  def show
    @graded_component = GradedComponent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @graded_component }
    end
  end

  # GET /graded_components/new
  # GET /graded_components/new.xml
  def new
    @graded_component = GradedComponent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @graded_component }
    end
  end

  # GET /graded_components/1/edit
  def edit
    @graded_component = GradedComponent.find(params[:id])
  end

  # POST /graded_components
  # POST /graded_components.xml
  def create
    @graded_component = GradedComponent.new(params[:graded_component])

    respond_to do |format|
      if @graded_component.save
        flash[:notice] = 'GradedComponent was successfully created.'
        format.html { redirect_to(@graded_component) }
        format.xml  { render :xml => @graded_component, :status => :created, :location => @graded_component }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @graded_component.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /graded_components/1
  # PUT /graded_components/1.xml
  def update
    @graded_component = GradedComponent.find(params[:id])

    respond_to do |format|
      if @graded_component.update_attributes(params[:graded_component])
        flash[:notice] = 'GradedComponent was successfully updated.'
        format.html { redirect_to(@graded_component) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @graded_component.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /graded_components/1
  # DELETE /graded_components/1.xml
  def destroy
    @graded_component = GradedComponent.find(params[:id])
    @graded_component.destroy

    respond_to do |format|
      format.html { redirect_to(graded_components_url) }
      format.xml  { head :ok }
    end
  end
end
