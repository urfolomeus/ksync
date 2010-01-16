require File.join(File.dirname(__FILE__), "..", "helpers", "ksync_helper")

module KitchenSync
  class KSync
    include KitchenSyncHelper
    
    def initialize(messenger)
      @messenger = messenger
    end
    
    def start(src, dest)
      @src = src
      @dest = dest
      @messenger.puts "Welcome to Kitchen Sync! Type help to view the command list."
      @messenger.puts "Enter command:"
    end
    
    def command(command)
      case command[0]
      when "help"
        @messenger.puts command_list
        @messenger.puts "Enter command: "
      when "exit"
        @messenger.puts "Thank you for using KSync"
      end
    end
  end
end