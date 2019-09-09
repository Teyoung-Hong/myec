class Admin::Base < ApplicationController
  layout 'admin'
  admins 'products'
  admins 'contact_replies'
end
