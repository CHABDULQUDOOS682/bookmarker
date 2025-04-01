class AppBookmarksController < ApplicationController
  before_action :set_app_bookmark, only: %i[ show edit update destroy ]

  # GET /app_bookmarks or /app_bookmarks.json
  def index
    @app_bookmarks = AppBookmark.all
  end

  # GET /app_bookmarks/1 or /app_bookmarks/1.json
  def show
  end

  # GET /app_bookmarks/new
  def new
    @app_bookmark = AppBookmark.new
  end

  # GET /app_bookmarks/1/edit
  def edit
  end

  # POST /app_bookmarks or /app_bookmarks.json
  def create
    @app_bookmark = AppBookmark.new(app_bookmark_params)

    respond_to do |format|
      if @app_bookmark.save
        format.html { redirect_to @app_bookmark, notice: "App bookmark was successfully created." }
        format.json { render :show, status: :created, location: @app_bookmark }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @app_bookmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_bookmarks/1 or /app_bookmarks/1.json
  def update
    respond_to do |format|
      if @app_bookmark.update(app_bookmark_params)
        format.html { redirect_to @app_bookmark, notice: "App bookmark was successfully updated." }
        format.json { render :show, status: :ok, location: @app_bookmark }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @app_bookmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_bookmarks/1 or /app_bookmarks/1.json
  def destroy
    @app_bookmark.destroy!

    respond_to do |format|
      format.html { redirect_to app_bookmarks_path, status: :see_other, notice: "App bookmark was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_bookmark
      @app_bookmark = AppBookmark.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def app_bookmark_params
      params.fetch(:app_bookmark, {})
    end
end
