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
      case command[0]
      when "help"
        @messenger.puts command_list.join("\n")
        @messenger.puts "Enter command: "
      when "exit"
        @messenger.puts "Thank you for using KSync"
    # else
    #   @messenger.puts "Command not recognised."
    #   @messenger.puts "Type help to view the command list."
      end
    end
    
    private
    
    def command_list
      commands = []
      commands << ""
      commands << "Command List"
      commands << "============"
      commands << "help   show command list"
      commands << "diff   show diff between given directories"
      commands << "sync   synchronise the directories"
      commands << "exit   exit the application"
      commands << ""
      commands << ""
    end
  end
end