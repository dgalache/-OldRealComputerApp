FactoryGirl.define do
  factory :ordem do
    equipamento "MyString"
marca "MyString"
defeito "MyString"
descricao "MyText"
status "MyString"
valor 1.5
tecnico nil
cliente nil
  end

end
