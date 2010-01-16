$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "..", "lib")

require 'ksync'
require File.join(File.dirname(__FILE__), "..", "..", "spec", "kitchen_sync", "ksync_spec_helper")

include KitchenSyncSpecHelper