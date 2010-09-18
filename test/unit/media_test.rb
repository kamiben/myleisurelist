require 'test_helper'

class MediaTest < ActiveSupport::TestCase

  test "ne doit pas etre valide sans categorie" do
    m = Media.create(:categorie => nil, :nom =>'Nom')
    assert m.errors[:categorie]
  end
  
  test "ne doit pas etre valide sans nom" do
    m = Media.create(:categorie => 'anime', :nom => nil)
    assert m.errors[:nom]
  end
  
    test "doit creer un media si tout est ok" do
    m = Media.create(:categorie => 'anime', :nom => 'naturo')
    assert m.valid?
  end
end
