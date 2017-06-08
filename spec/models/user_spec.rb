require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  it { is_expected.to validate_presence_of(:email) }                      #Nao pode ter usuario com email nill
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }   #Verifica se o email é unico. Nao considera case_insensitive
  it { is_expected.to validate_confirmation_of(:password) }               #verifica se esta validando o password com o password_confirmation
  it { is_expected.to allow_value('costa@nonato.com').for(:email) }       #valida esse formato de email

end