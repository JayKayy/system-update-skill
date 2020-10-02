from mycroft import MycroftSkill, intent_handler
import subprocess
update_command = "sudo dnf -y upgrade"

class SystemUpdate(MycroftSkill):
    def __init__(self):
        MycroftSkill.__init__(self)

    @intent_handler('update.system.intent')
    def handle_update_system(self, message):
        self.speak_dialog('update.system')
        process =  subprocess.Popen(update_command.split(), stdout=subprocess.PIPE)
        output, error = process.communicate()
        if error == None:
            self.speak_dialog('Upgrade completed successfully')


def create_skill():
    return SystemUpdate()

