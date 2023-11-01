Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'
  resources :permissions
  resources :type_users
  resources :countries

  resources :states do
    collection do
      get 'get_states_by_country' => 'states#get_states_by_country'
    end
  end

  resources :addresses do
    collection do
      get 'address_by_client' => 'address#address_by_client'
    end
  end

  resources :users do
    collection do
      get 'list' => 'users#list'
      get 'current_user' => 'users#current_user'
    end
  end

  resources :machineries do
    collection do
      get 'get_machineries' => 'machineries#get_machineries'
    end
  end
  resources :machinery_images do
    collection do
      get 'get_images_by_machinery_id' => 'machinery_images#get_images_by_machinery_id'
    end
  end
  resources :machinery_categories do 
    collection do
      get 'get_subcategory_by_category' => 'machinery_categories#get_subcategory_by_category'
    end
  end
  resources :machinery_documents do
    collection do
      get 'download_document' => 'machinery_documents#download_document'
      get 'get_documents_by_machinery_id' => 'machinery_documents#get_documents_by_machinery_id'
    end
  end



  resources :entries do
    collection do
      get 'get_entries' => 'entries#get_entries'
      get 'most_recent' => 'entries#most_recent'
    end
  end

  resources :subcategories
  resources :send_mails do
    collection do
      post 'mail_automatizacion' => 'send_mails#mail_automatizacion'
      post 'mail_machinery' => 'send_mails#mail_machinery'
      post 'mail_supp_ref' => 'send_mails#mail_supp_ref'
      post 'mail_vinculation' => 'send_mails#mail_vinculation'
      post 'mail_oportunity' => 'send_mails#mail_oportunity'
    end
  end

end
