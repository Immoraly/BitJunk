class GarbageMenController < ApplicationController
  def profile
  end

  def new
  end

  def show
    @garbageman = GarbageMan.find_by(params[:id])
  end

  def edit
  end

  def update
    g_m = GarbageMan.find_by(params[:id])
    return render code: 404 unless g_m.present?
    g_m.update_columns(params)
    redirect_to :show
  end

  def destroy
    GarbageMan.destroy(params[:id])
  end
  # private
  # def garbage_man_parms
  #   params[:garbage_man][:role]='1'
  #   params.require(:garbage_man).permit(:email,:encrypted_password,:role)
  # end
end
