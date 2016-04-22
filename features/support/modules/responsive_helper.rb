module ResponsiveHelper

  def self.set_size(size)
    case size
      when 'desktop'
        resize_window_default
      when 'tablet'
        resize_window_to_tablet
      when 'mobile'
        resize_window_to_mobile
      else
        raise "Unknown browser size"
      end   
  end  
 
  def self.resize_window_to_mobile
    resize_window_by([640, 480])
  end
 
  def self.resize_window_to_tablet
    resize_window_by([960, 640])
  end
 
  def self.resize_window_default
    resize_window_by([1024, 768])
  end
 
  private
 
  def self.resize_window_by(size)
    Capybara.current_session.driver.browser.manage.window.resize_to(size[0], size[1]) if Capybara.current_session.driver.browser.respond_to? 'manage'
  end
 
end

World(ResponsiveHelper)