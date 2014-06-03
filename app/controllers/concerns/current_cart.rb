module CurrentCart
  extend ActiveSupport::Concern

  private

    def set_cart
      @cart = Cart.find(session[:cart_id])
 Rails.logger.error "-----This is set_cart-5555-----"
    rescue ActiveRecord::RecordNotFound
 Rails.logger.error "-----This is set cart -6666----"
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
end
