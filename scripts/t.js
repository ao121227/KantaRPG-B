import * as mc from "@minecraft/server"; // Ver 2.0.0
import * as mcui from "@minecraft/server-ui"; // Ver 2.0.0

mc.system.afterEvents.scriptEventReceive.subscribe((ev) => {
  if (ev.id === `ui:action`) {
    const form = new mcui.ActionFormData()
      .title(`ACTION FORM UI`)
      .body(`body text`)
      .divider()
      .header(`Header text`)
      .label(`Label text`)
      .button(`apple`, `textures/items/apple`)
      .button(`stick`, `textures/items/stick`)
      .button(`diamond`, `textures/items/diamond`)
      .show(ev.sourceEntity)
      .then((res) => {
        if (res.selection === undefined || res.canceled === true) return;
        if (res.selection === 0) {
          ev.sourceEntity.runCommand(`say apple`);
        } else if (res.selection === 1) {
          ev.sourceEntity.runCommand(`say stick`);
        } else if (res.selection === 2) {
          ev.sourceEntity.runCommand(`say diamond`);
        }
      });
  }
  if (ev.id === `ui:modal`) {
    const form = new mcui.ModalFormData()
      .title(`MODAL FORM UI`)
      .header(`Header text`)
      .label(`Label text`)
      .divider()
      .textField(`textField text`, `placeholder`, {
        defaultValue: `default text`,
        tooltip: `tooltip text`,
      })
      .toggle(`toggle text`, { defaultValue: true, tooltip: `tooltip text` })
      .slider(`slider text`, 0, 100, { defaultValue: 50, tooltip: `tooltip text`, valueStep: 10 })
      .dropdown(`dropdown text`, [`apple`, `stick`, `diamond`], {
        defaultValueIndex: 0,
        tooltip: `tooltip text`,
      })
      .submitButton(`submit button text`)
      .show(ev.sourceEntity)
      .then((res) => {
        if (res.formValues === undefined || res.canceled === true) return;
        ev.sourceEntity.sendMessage(`${JSON.stringify(res.formValues)}`);
      });
  }
})