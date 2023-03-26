class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :timeoutable,
         :recoverable, :rememberable, :validatable, :authentication_keys => [:cpf]

  validates_uniqueness_of :cpf, message: ": - Este CPF já está em uso!"
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

  def active_for_authentication?
    if :active
      super && active?
    end
  end
       
end
