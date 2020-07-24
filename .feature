Feature: /opt/mycroft/skills/system-update-skill/

  Scenario: update.system.intent.0.intent.json
    Given an english speaking user
     When the user says "Update Fedora"
     Then "/opt/mycroft/skills/system-update-skill/" should reply with dialog from "update.system.dialog"

  Scenario: update.system.intent.1.intent.json
    Given an english speaking user
     When the user says "Upgrade Fedora"
     Then "/opt/mycroft/skills/system-update-skill/" should reply with dialog from "update.system.dialog"

  Scenario: update.system.intent.2.intent.json
    Given an english speaking user
     When the user says "Run a dnf update"
     Then "/opt/mycroft/skills/system-update-skill/" should reply with dialog from "update.system.dialog"

  Scenario: update.system.intent.3.intent.json
    Given an english speaking user
     When the user says "Run a dnf upgrade"
     Then "/opt/mycroft/skills/system-update-skill/" should reply with dialog from "update.system.dialog"
