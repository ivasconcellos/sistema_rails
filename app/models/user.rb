class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :authentication_keys => [:cpf]

  validates_uniqueness_of :cpf
  validates_presence_of :name, :cpf, :email
  
  VISUALIZADOR = 'Visualizador'
  SUPERVISOR = 'Supervisor'
  COORDENADOR = 'Coordenador'
  TIC = 'TIC'

  PROFILE = [
    VISUALIZADOR,
    SUPERVISOR,
    COORDENADOR,
    TIC
  ]
       
end
