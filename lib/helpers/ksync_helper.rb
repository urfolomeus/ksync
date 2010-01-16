module KitchenSyncHelper
  def command_list
    commands = "\n"
    commands += "Command List\n"
    commands += "============\n"
    commands += "help   show command list\n"
    commands += "diff   show diff between given directories\n"
    commands += "sync   synchronise the directories\n"
    commands += "exit   exit the application\n"
    commands += "\n"
  end
end