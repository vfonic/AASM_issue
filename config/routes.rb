Aasm::Application.routes.draw do
  resources :jobs
  match 'jobs/complete/:id' => "jobs#complete"
  root to: "jobs#index"
end
