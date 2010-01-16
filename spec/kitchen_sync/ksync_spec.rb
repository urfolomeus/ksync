require File.join(File.dirname(__FILE__), "..", "spec_helper")

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

module KitchenSync
  describe KSync do
    include KitchenSyncHelper
    
    before(:each) do
      @messenger = mock("messenger").as_null_object
      @ksync = KSync.new(@messenger)
    end
    
    context "starting up" do
      it "should send a welcome message" do
        @messenger.should_receive(:puts).with("Welcome to Kitchen Sync! Type help to view the command list.")
        @ksync.start
      end      
      it "should prompt for the first command" do
        @messenger.should_receive(:puts).with("Enter command:")
        @ksync.start
      end
    end
    
    context "asking for help" do
      it "should display the command list when user gives help command" do
        @ksync.start
        @messenger.should_receive(:puts).with(command_list)
        @ksync.command(["help"])
      end
    end
    
    context "terminating the application" do
      it "should display a goodbye message" do
        @ksync.start
        @messenger.should_receive(:puts).with("Thank you for using KSync")
        @ksync.command(["exit"])
      end
      
      it "should exit when the user gives the exit command" #do
     #  @ksync.start
     #  @ksync.command(["exit"])
     #  @ksync.should eql(nil)
     #end
    end
  end
end