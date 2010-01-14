module KitchenSync
  class KSync
    def initialize(messenger)
      @messenger = messenger
    end
    
    def start
      @messenger.puts "Welcome to Kitchen Sync! Type help to view the command list."
      @messenger.puts "Enter command:"
    end
    
    def command(command)
      if command[0] == "help"
        @messenger.puts command_list.join("\n")
      else
        @messenger.puts "Command not recognised."
        @messenger.puts "Type help to view the command list."
      end
    end
    
    private
    
    def command_list
      commands = []
      commands << nil
      commands << "Command List"
      commands << "============"
      commands << "help   show command list"
      commands << "diff   show diff between given directories"
      commands << "sync   synchronise the directories"
      commands << nil
      commands << "Enter command:"
    end
  end
end