require 'test_helper'

class MediasControllerTest < ActionController::TestCase
  test "doit montrer l'index" do
    get :index
    assert_response :success
    assert_template 'index'
    assert_not_nil assigns :media
  end
  
  test "doit montrer la creaction de media" do
    get :new
    assert_response :success
    assert_template 'new'
    assert_not_nil assigns :media
  end

  test "doit montrer un formulaire avec 5 p" do
    get :new
    assert_select 'form p', :count => 5 
  end 

  test "doit pouvoir ajouter un media" do
   post :create, :media => { 
   :categorie => 'test',
   :nom => 'naturo'
   }
   assert ! assigns(:media).new_record? # l'enregistrement est bien validé (doit etre a false donc)'
   assert_redirected_to medias_path # Je me suis bien fait redirigé au bon endroit
   assert_not_nil flash[:notice] # Le flash de validation est bien validé
  end 

  test "doit retourner une erreur si il manque un attribut" do
   post :create, :media => { :nom => 'media sans categorie' }
   assert assigns(:media).errors[:categorie ]
  end 

end
