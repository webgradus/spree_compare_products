Spree::TaxonsController.class_eval do

  before_filter :find_compare_products,:only=>:show




  protected

  def find_compare_products
    @compare_products = Spree::Product.find(:all, :conditions => { :id => session[:compare_products]} ,:limit => 4)
  end

end
