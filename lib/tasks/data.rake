namespace :data do
  desc "create roles"
  task :populate_roles => :environment  do   
    #Role.create!(id: 0, title: 'Гость')
    #Role.create!(id: 1, title: 'Пользователь')
    #Role.create!(id: 2, title: 'Менеджер')
    #Role.create!(id: 3, title: 'Администратор')
  end  
end
