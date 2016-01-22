Rails.application.routes.draw do
  root 'courses#index'

  resources :courses, path: 'cursos', except: [:show]
  resources :students, path: 'estudantes', except: [:show]
  resources :classrooms, path: 'classes', except: [:show]
end
