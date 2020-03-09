authorization do
  role :admin do
    has_permission_on [:articles, :gigs], :to => [:index, :show, :new, :create, :edit, :update, :delete]
  end

  role :guest do
    has_permission_on :home, :to => [:home, :welcome]
  end
end