from mycroft import MycroftSkill, intent_file_handler


class SystemUpdate(MycroftSkill):
    def __init__(self):
        MycroftSkill.__init__(self)

    @intent_file_handler('update.system.intent')
    def handle_update_system(self, message):
        self.speak_dialog('update.system')


def create_skill():
    return SystemUpdate()

