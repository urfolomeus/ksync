require File.join(File.dirname(__FILE__), "..", "..", "lib", "helpers", "ksync_helper")

module KitchenSyncSpecHelper
  include KitchenSyncHelper
  
  def src
    File.join(File.dirname(__FILE__), "..", "..", "data", "src")
  end
  
  def dest
    File.join(File.dirname(__FILE__), "..", "..", "data", "dest")
  end
end