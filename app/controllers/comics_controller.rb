class ComicsController < ApplicationController
  before_action :set_comic, only: %i[ show edit update destroy ]

  # GET /comics or /comics.json
  def index
    @comics = Comic.all.order(title: :asc)

    if params[:conclusion].present?
      if params[:conclusion] == 'true'
        @comics = @comics.where(conclusion: true)
      elsif params[:conclusion] == 'false'
        @comics = @comics.where(conclusion: false)
      end
    end

    if params[:title_key].present?
      @comics = @comics.where('title LIKE ?', "%#{params[:title_key]}%")
    end
  end

  # GET /comics/1 or /comics/1.json
  def show
  end

  # GET /comics/new
  def new
    @comic = Comic.new
  end

  # GET /comics/1/edit
  def edit
  end

  # POST /comics or /comics.json
  def create
    @comic = Comic.new(comic_params)
    respond_to do |format|
      if @comic.save
        @comic.update_column(:last_update,Time.now)
        format.html { redirect_to @comic, notice: "書籍の作成に成功しました" }
        format.json { render :show, status: :created, location: @comic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comics/1 or /comics/1.json
  def update
    respond_to do |format|
      if @comic.update(comic_params)
        @comic.update_column(:last_update,Time.now)
        format.html { redirect_to @comic, notice: "書籍の編集に成功しました" }
        format.json { render :show, status: :ok, location: @comic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comics/1 or /comics/1.json
  def destroy
    @comic.destroy!

    respond_to do |format|
      format.html { redirect_to comics_path, status: :see_other, notice: "書籍を削除しました" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comic
      @comic = Comic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comic_params
      params.require(:comic).permit(:title, :author,:publisher,:conclusion,:start_volume,:end_volume,:memo,:nonpossession)
    end
end
