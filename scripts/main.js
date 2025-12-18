import * as mc from "@minecraft/server"; // Ver 2.0.0
import * as mcui from "@minecraft/server-ui"; // Ver 2.0.0
import { world } from '@minecraft/server';

mc.system.afterEvents.scriptEventReceive.subscribe((ev) => {
  const player = ev.sourceEntity;
  const message = ev.message;
  // itemCreateTool
  if (ev.id === `i:c`) {
    CreatedropItemMenu(player);
  }
  if (ev.id === `i:d`) {
    dropItemCreateMenu(player);
  }
  if (ev.id === `i:m`) {
    CreateMagicMenu(player);
  }

  if (ev.id === `i:t`) {
    player.runCommand(`tp -7.51 -60.00 -15.50`)
    tpMenu(player);
  }
  if (ev.id === `op:menu`) {
    opMenu(player);
  }

  if (ev.id === `i:notJob`) {
    player.sendMessage(`> §4この魔法は魔法ジョブが${message}でないと使用できない！`)
    player.playSound(`click_on.bamboo_wood_button`)
  }
  if (ev.id === `i:notMp`) {
    player.sendMessage(`> §4MPが足りない！§7 ( 必要MP:§l§e${message}§r§7 )`)
    player.playSound(`click_on.bamboo_wood_button`)
  }
  if (ev.id === `i:notLv`) {
    player.sendMessage(`> §4必要レベルに達していない！§7 ( 必要Lv:§l§e${message}§r§7 )`)
    player.playSound(`click_on.bamboo_wood_button`)
  }
  if (ev.id === `i:notCoolDown`) {
    const object = world.scoreboard.getObjective("magicCoolDown");
    const score = object.getScore(player.scoreboardIdentity);
    let s = score / 20
    player.sendMessage(`> §4クールダウン中！§7 ( 残り: §e${s}s§r§7 )`)
  }

  if (ev.id === `dungeon:setRare`) {
    switch (message) {
      case "normal":
        player.nameTag = `§fノーマル\n`
        break;
      case "uncommon":
        player.nameTag = `§aアンコモン\n`
        break;
      case "unique":
        player.nameTag = `§6ユニーク\n`
        break;
      case "rare":
        player.nameTag = `§dレア\n`
        break;
      case "legendary":
        player.nameTag = `§bレジェンダリー\n`
        break;
      case "maboroshi":
        player.nameTag = `§4幻\n`
        break;
      case "shinwa":
        player.nameTag = `§u神話\n`
        break;
    }
  }
  if (ev.id === `dungeon:loot`) {
    let lootName
    let lootRare
    let lootStructure
    let lootRareView = []
    let lootRareNumber
    switch (message) {
      case "test1":
        lootName = ["§f腐った肉","§2ニンジン","§2ゾンビの硬肉","§2石の剣","§2石の杖"]
        lootRare = ["normal","uncommon","uncommon","uncommon","uncommon"]
        lootStructure = ["loot:0011","loot:0012","loot:0013","weapon:2100","weapon:2200"]
        lootRareNumber = 3
        break;
      case "test2":
        lootName = ["§2ハスクの硬肉","§2砂","§6金のニンジン","§6火の欠片","§6命の結晶"]
        lootRare = ["uncommon","uncommon","uncommon","unique","unique","unique"]
        lootStructure = ["loot:0032","loot:0033","loot:0034","loot:0035","items/artifacts/2002"]
        lootRareNumber = 2
        break;
      case "none":
        lootName = ["§f未実装"]
        lootRare = ["normal"]
        lootStructure = ["loot:0000"]
        lootRareNumber = 1
        break;
    }
    for (let i = 0; i < lootName.length; i++) {
      switch (lootRare[i]) {
        case "normal":
          lootRareView.push("")
          break;
        case "uncommon":
          lootRareView.push("")
          break;
        case "unique":
          lootRareView.push("")
          break;
        case "rare":
          lootRareView.push("")
          break;
        case "legendary":
          lootRareView.push("")
          break;
        case "maboroshi":
          lootRareView.push("")
          break;
        case "shinwa":
          lootRareView.push("")
          break;
      }
    }
    const random1 = Math.floor(Math.random() * lootName.length);
    const random2 = Math.floor(Math.random() * lootName.length);
    const random3 = Math.floor(Math.random() * lootName.length);
    const Nrandom1 = Math.floor(Math.random() * (lootName.length - (lootRareNumber - 1)));
    const Nrandom2 = Math.floor(Math.random() * (lootName.length - (lootRareNumber - 1)));
    const Nrandom3 = Math.floor(Math.random() * (lootName.length - (lootRareNumber - 1)));
    let g1
    let g2
    let g3
    if (Math.floor(Math.random() * 100) <= 20) g1 = random1
    else g1 = Nrandom1
    if (Math.floor(Math.random() * 100) <= 20) g2 = random2
    else g2 = Nrandom2
    if (Math.floor(Math.random() * 100) <= 20) g3 = random3
    else g3 = Nrandom3
    player.sendMessage(`---獲得内容---`)
    player.sendMessage(`> 【${lootName[g1]}§f】 ${lootRareView[g1]}`)
    player.sendMessage(`> 【${lootName[g2]}§f】 ${lootRareView[g2]}`)
    player.sendMessage(`> 【${lootName[g3]}§f】 ${lootRareView[g3]}`)
    if (lootStructure[g1].includes("/")) {
      player.runCommand(`function ${lootStructure[g1]}`);
    } else player.runCommand(`structure load "${lootStructure[g1]}" ~ ~ ~`);
    if (lootStructure[g2].includes("/")) {
      player.runCommand(`function ${lootStructure[g2]}`);
    } else player.runCommand(`structure load "${lootStructure[g2]}" ~ ~ ~`);
    if (lootStructure[g3].includes("/")) {
      player.runCommand(`function ${lootStructure[g3]}`);
    } else player.runCommand(`structure load "${lootStructure[g3]}" ~ ~ ~`);
  }

  // shop
  if (ev.id === `shop:not`) {
    player.sendMessage(`> §4お金が足りない！§7 ( 必要ゴールド: §f${message}§eG§r§7 )`)
    player.playSound(`click_on.bamboo_wood_button`)
  }
  if (ev.id === `shop:buy`) {
    const data = JSON.parse(message)
    player.sendMessage(`> §a§l「${data.item}」§r§aを購入しました。 §7( 代金: §f${data.g}§eG§r§7 )`)
    player.runCommand(`scoreboard players remove @s G ${data.g}`)
    player.playSound(`random.orb`)
  }
  if (ev.id === `shop:sell`) {
    dropSell(player)
  }
  if (ev.id === `village:tp`) {
    player.runCommand(`title @s times 20 10 5`);
    if (message == 0) {
      player.runCommand(`tp -4.47 -59.00 -51.66 ~-90`);
      player.runCommand(`title @s title §6ショップ`);
      player.runCommand(`tag @s add shop`);
      player.runCommand(`execute unless entity @e[name=§r村人] run summon villager -5.09 -59.00 -57.36 0 0 villager_converted §r村人`);
    } else if (message == 0.1) {
      player.runCommand(`tp -50.75 -43.06 -49.98 ~90`);
      player.runCommand(`title @s title §n最初の村`);
      player.runCommand(`tag @s remove shop`);
      player.runCommand(`execute unless entity @a[tag=shop] run kill @e[name=§r村人]`)
    } else if (message == 1) {
      player.runCommand(`tp -28.95 -58.50 -41.83`);
      player.runCommand(`title @s title §5魔法店`);
    } else if (message == 1.1) {
      player.runCommand(`tp -73.00 -40.50 -47.96`);
      player.runCommand(`title @s title §n最初の村`);
    } else if (message == 2) {
      player.runCommand(`tp -41.95 -59.00 -41.71 ~-90`);
      player.runCommand(`title @s title §3ｷﾞｮｷﾞｮ店`);
    } else if (message == 2.1) {
      player.runCommand(`tp -58.36 -43.00 -12.92 ~90`);
      player.runCommand(`title @s title §n最初の村`);
    } else if (message == 3) {
      player.runCommand(`tp -53.55 -59.00 -46.99 ~90`);
      player.runCommand(`title @s title §6貴重店`);
    } else if (message == 3.1) {
      player.runCommand(`tp -46.10 -42.50 -28.95 ~-90`);
      player.runCommand(`title @s title §n最初の村`);
    }
}

  // effect
  if (ev.id === `effect:fire`) {
    player.setOnFire((Number(message)), true);
  }
  if (ev.id === "fire:cancel") {
    player.extinguishFire(true);
  }

  // weapon & armor
   if (ev.id === "item:needLv") {
    const m = JSON.parse(message)
    const object = world.scoreboard.getObjective("nowLv");
    const score = object.getScore(player.scoreboardIdentity);
    if (m.slot == "mainHand") if (mainHandCheck(player,m.name)) if (!(score >= Number(m.lv))) player.runCommand(`effect @s weakness 1 255 false`);
    if (m.slot == "armor") if (armorCheck(player,m.name)) if (!(score >= Number(m.lv))) {
      player.runCommand(`effect @s slowness 1 255 false`);
      player.runCommand(`title @s times 1 1 1`);
      player.runCommand(`title @s title §4防具の必要レベル: Lv.${Number(m.lv)}`);
    }
  }

  // status
  if (ev.id === `status:spd`) {
    const object = world.scoreboard.getObjective("spd");
    const score = object.getScore(player.scoreboardIdentity);
    let spd = score - 1
    if (spd >= 1) player.runCommand(`effect @s speed 1 ${spd} true`)
  }
  if (ev.id === `status:jmp`) {
    const object = world.scoreboard.getObjective("jmp");
    const score = object.getScore(player.scoreboardIdentity);
    let jmp = score - 1
    player.runCommand(`effect @s jump_boost 1 ${jmp} true`)
  }
  if (ev.id === `status:vampire`) {
    const object = world.scoreboard.getObjective("vampire");
    const score = object.getScore(player.scoreboardIdentity) | 0;
    const percent = 100 - score
    const random = Math.floor(Math.random() * percent);
    if (score !== 0 && random === 0) {
      player.playSound(`mob.parrot.hurt`);
      player.runCommand(`effect @s instant_health 1 ${message} true`);
      player.runCommand(`particle minecraft:trial_spawner_detection ~-0.5~~-0.5`)
    }
  }
  if (ev.id === `status:result`) {
    const m = JSON.parse(message)
    const objectXP = world.scoreboard.getObjective("xpBonus");
    const scoreXP = objectXP.getScore(player.scoreboardIdentity) | 0;
    const xpBonusP = (100 + scoreXP) / 100
    const giveXp = Math.floor(Number(m.xp)*xpBonusP)
    const xpBonus = giveXp - Number(m.xp)
    player.runCommand(`scoreboard players add @s nowXp ${giveXp}`)
    player.runCommand(`scoreboard players add @s G ${Number(m.g)}`)
    if (xpBonus == 0) player.runCommand(`execute positioned ~~1~ run summon borak:floating_text "§2獲得経験値: §f${Number(m.xp)}§aXP\n§6獲得ゴールド: §f${Number(m.g)}§eG" ^^^2.5`)
      else player.runCommand(`execute positioned ~~1~ run summon borak:floating_text "§2獲得経験値: §f${Number(m.xp)}+${xpBonus}§aXP\n§6獲得ゴールド: §f${Number(m.g)}§eG" ^^^2.5`)
  }

  if (ev.id === `r:tp`) {
    player.runCommand(`title @s times 20 10 5`);
    if (message == 0) {
      player.runCommand(`tp -65.45 -43.06 -1.48`);
      player.runCommand(`scoreboard players set @s stage 0`);
      player.runCommand(`scoreboard players set @s village 1`);
      player.runCommand(`title @s title §n最初の村`);
    } else if (message == 1) {
      player.runCommand(`tp -65.61 -44.06 7.06`);
      player.runCommand(`scoreboard players set @s stage 1`);
      player.runCommand(`scoreboard players set @s village 0`);
      player.runCommand(`title @s title §2普通の草原`);
      player.runCommand(`title @s subtitle §4危険度 Lv.1`);
  }  else if (message == 1.1) {
      player.runCommand(`tp -71.74 -44.06 63.72`);
      player.runCommand(`scoreboard players set @s stage 1`);
      player.runCommand(`scoreboard players set @s village 0`);
      player.runCommand(`fog @s remove s2`)
      player.runCommand(`title @s title §2普通の草原`);
      player.runCommand(`title @s subtitle §4危険度 Lv.1`);
  } else if (message == 1.2) {
      player.runCommand(`tp -94.15 -44.06 41.40`);
      player.runCommand(`scoreboard players set @s stage 1`);
      player.runCommand(`scoreboard players set @s village 0`);
      player.runCommand(`fog @s remove s4`)
      player.runCommand(`title @s title §2普通の草原`);
      player.runCommand(`title @s subtitle §4危険度 Lv.1`);
  } else if (message == 2) {
      player.runCommand(`tp -71.55 -46.00 72.05`);
      player.runCommand(`scoreboard players set @s stage 2`);
      player.runCommand(`scoreboard players set @s village 0`);
      player.runCommand(`fog @s push fog:s2 s2`)
      player.runCommand(`title @s title §eサラサラ砂漠`);
      player.runCommand(`title @s subtitle §4危険度 Lv.6`);
  } else if (message == 2.1) {
      player.runCommand(`tp -71.33 -46.00 128.90`);
      player.runCommand(`scoreboard players set @s stage 2`);
      player.runCommand(`scoreboard players set @s village 0`);
      player.runCommand(`fog @s push fog:s2 s2`)
      player.runCommand(`title @s title §eサラサラ砂漠`);
      player.runCommand(`title @s subtitle §4危険度 Lv.6`);
  } else if (message == 3) {
      player.runCommand(`tp -71.58 -48.00 136.88`);
      player.runCommand(`scoreboard players set @s stage 3`);
      player.runCommand(`scoreboard players set @s village 0`);
      player.runCommand(`fog @s remove s2`)
      player.runCommand(`title @s title §fカチカチ山脈`);
      player.runCommand(`title @s subtitle §4危険度 Lv.11`);
  } else if (message == 4) {
      player.runCommand(`tp -101.76 -45.00 41.34`);
      player.runCommand(`scoreboard players set @s stage 4`);
      player.runCommand(`scoreboard players set @s village 0`);
      player.runCommand(`fog @s push fog:s4 s4`)
      player.runCommand(`title @s title §a荒廃した地底`);
      player.runCommand(`title @s subtitle §4危険度 Lv.17`);
  }
}
  if (ev.id === `r:spawnpoint`) {
    if (message == 0) {
      player.sendMessage(`> スポーン地点を設定しました`);
      player.runCommand(`spawnpoint @s -66.78 -43.00 -2.41`);
      player.runCommand(`playsound random.orb @s`);
    }
  }

  if (ev.id === `r:artifact`) {
    const slot1Object = world.scoreboard.getObjective("artifacts");
    const slot2Object = world.scoreboard.getObjective("artifacts2");
    const slot1 = slot1Object.getScore(player.scoreboardIdentity) | 0;
    const slot2 = slot2Object.getScore(player.scoreboardIdentity) | 0;
    const artifacts = {
      0: "§7なし",
      1001: "§2すばやさのはね",
      1002: "§2氷",
      2001: "§6毒除けクリスタル",
      2002: "§6命の結晶",
      2003: "§6吸血の粉",
      3001: "§d魔法のクリスタル"
    }
    player.sendMessage(` §9アーティファクト1: ${artifacts[slot1]}`)
    player.sendMessage(` §9アーティファクト2: ${artifacts[slot2]}`)
  }

  // 釣り
  if (ev.id === `fishing:power`) {
    const inventory = player.getComponent("minecraft:inventory");
    if (inventory) {
      const selectedItem = inventory.container.getItem(player.selectedSlotIndex);
      if (selectedItem) {
        const objectFishingBait = world.scoreboard.getObjective("fishingBait");
        const scoreFishingBait = objectFishingBait.getScore(player.scoreboardIdentity) || 0;
        const itemName = selectedItem.nameTag;
        const rod = {
          "§r§2普通の釣り竿" : 0,
          "§r§6すごい釣り竿" : 2,
          "§r§4伝説の釣り竿" : 4
        };
        player.runCommand(`scoreboard players set @s fishingPower ${rod[itemName] + scoreFishingBait}`)
      }
    }
  }
  if (ev.id === `fishing:loot`) {
    const fishingData = JSON.parse(message)
    const objectStage = world.scoreboard.getObjective("stage");
    const objectVillage = world.scoreboard.getObjective("village");
    const objectFishingBait = world.scoreboard.getObjective("fishingBait");
    const scoreStage = objectStage.getScore(player.scoreboardIdentity)
    const scoreVillage = objectVillage.getScore(player.scoreboardIdentity)
    const scoreFishingBait = objectFishingBait.getScore(player.scoreboardIdentity) || 0;
    let fishingPlace
    let fishingAmount = Number(fishingData.amount);
    if (scoreStage != 0) fishingPlace = `s${scoreStage}`
    else fishingPlace = `v${scoreVillage}`

    if (fishingData.sort == "fish") {
      switch (fishingPlace) {
        case `v1`:
          v1()
          if (fishingAmount > 2-1) v1()
          if (fishingAmount > 3-1) v1()
          break;
      }
      if (scoreFishingBait != 0) {
        player.runCommand(`scoreboard players set @s fishingBait 0`)
        player.sendMessage(`> 餌を消費しました`)
        player.playSound(`random.orb`)
      }
      function v1() {
        player.runCommand(`scoreboard players random @s fishing 1 100`)
        player.runCommand(`execute if score @s fishing matches ..${Number(fishingData.LR1)} run function items/fishing/loot/fish/1001`)
        player.runCommand(`execute if score @s fishing matches ${Number(fishingData.LR1) + 1}..${Number(fishingData.LR2)} run function items/fishing/loot/fish/1002`)
        player.runCommand(`execute if score @s fishing matches ${Number(fishingData.LR2) + 1}.. run function items/fishing/loot/fish/1101`)
        player.runCommand(`scoreboard players reset @s fishing`)
      }
    } else if (fishingData.sort == "gold") {
      player.runCommand(`scoreboard players random @s fishing ${Number(fishingData.LR1)} ${Number(fishingData.LR2)}`)
      player.runCommand(`scoreboard players operation @s G += @s fishing`)
      player.runCommand(`tellraw @s { "rawtext": [{ "text": "> §f+" },{ "score": {"name": "@s", "objective": "fishing" } },{ "text": "§eG" }] }`)
      player.runCommand(`scoreboard players reset @s fishing`)
    }
  }
})
world.beforeEvents.playerInteractWithEntity.subscribe((event) => {
  const player = event.player;
  const entity = event.target;

  if (entity.nameTag == "§r村人") {
    player.sendMessage(`<村人> いらっしゃい！`)
  }
});

world.afterEvents.itemUse.subscribe(evd => {
  const player = evd.source;

  // others
  if (evd.itemStack.typeId === 'minecraft:nether_star' && evd.itemStack.nameTag === '§r§7ステータス確認') {
    player.runCommand(`function status/check`);
  }
  if (evd.itemStack.typeId === 'minecraft:nether_star' && evd.itemStack.nameTag === '§r§7オペレーターメニュー') {
    opMenu(player);
  }
  
  // 餌
  if (evd.itemStack.nameTag === '§r§f普通の餌') { 
    const objectFishingBait = world.scoreboard.getObjective("fishingBait");
    const scoreFishingBait = objectFishingBait.getScore(player.scoreboardIdentity) || 0;
    if (scoreFishingBait === 0) {
      player.sendMessage(`> §f「普通の餌」§fをセットしました`)
      player.runCommand(`scoreboard players set @s fishingBait 1`)
      player.runCommand(`clear @s armadillo_scute 0 1`)
      player.playSound(`random.orb`)
    } else {
      player.sendMessage(`> §4既に餌がセットされています`)
      player.playSound(`click_on.bamboo_wood_button`)
    }
  } 
  if (evd.itemStack.nameTag === '§r§2すごい餌') { 
    const objectFishingBait = world.scoreboard.getObjective("fishingBait");
    const scoreFishingBait = objectFishingBait.getScore(player.scoreboardIdentity) || 0;
    if (scoreFishingBait === 0) {
      player.sendMessage(`> §2「すごい餌」§fをセットしました`)
      player.runCommand(`scoreboard players set @s fishingBait 2`)
      player.runCommand(`clear @s nautilus_shell 0 1`)
      player.playSound(`random.orb`)
    } else {
      player.sendMessage(`> §4既に餌がセットされています`)
      player.playSound(`click_on.bamboo_wood_button`)
      
    }
  }
  if (evd.itemStack.nameTag === '§r§6とてもすごい餌') { 
    const objectFishingBait = world.scoreboard.getObjective("fishingBait");
    const scoreFishingBait = objectFishingBait.getScore(player.scoreboardIdentity) || 0;
    if (scoreFishingBait === 0) {
      player.sendMessage(`> §6「とてもすごい餌」§fをセットしました`)
      player.runCommand(`scoreboard players set @s fishingBait 3`)
      player.runCommand(`clear @s phantom_membrane 0 1`)
      player.playSound(`random.orb`)
    } else {
      player.sendMessage(`> §4既に餌がセットされています`)
      player.playSound(`click_on.bamboo_wood_button`)
      
    }
  }

  // 魔法
  if (evd.itemStack.nameTag === '§r§4ファイアボール') { 
    player.runCommand(`function items/magic_command/magic/1001/_`)
  }
  if (evd.itemStack.nameTag === '§r§4円火') { 
    player.runCommand(`function items/magic_command/magic/1101/_`)
  }
  if (evd.itemStack.nameTag === '§r§4ファイアウォール') { 
    player.runCommand(`function items/magic_command/magic/1102/_`)
  }
  if (evd.itemStack.nameTag === '§r§3ウォーターボール') {
    player.runCommand(`function items/magic_command/magic/2001/_`)
  }
  if (evd.itemStack.nameTag === '§r§3水責め') {
    player.runCommand(`function items/magic_command/magic/2101/_`)
  }
  if (evd.itemStack.nameTag === '§r§nアースボール') {
    player.runCommand(`function items/magic_command/magic/3001/_`)
  }
  if (evd.itemStack.nameTag === '§r§eミニヒール') {
    player.runCommand(`function items/magic_command/magic/4101/_`)
  }
  if (evd.itemStack.nameTag === '§r§eヒール') {
    player.runCommand(`function items/magic_command/magic/4201/_`)
  }
  if (evd.itemStack.nameTag === '§r§aウィンドボール') {
    player.runCommand(`function items/magic_command/magic/5001/_`)
  }
  if (evd.itemStack.nameTag === '§r§aウィンドウォール') {
    player.runCommand(`function items/magic_command/magic/5101/_`)
  }
  if (evd.itemStack.nameTag === '§r§fスーパーステップ') {
    player.runCommand(`function items/magic_command/magic/6001/_`)
  }
  if (evd.itemStack.nameTag === '§r§fパワー！！') {
    player.runCommand(`function items/magic_command/magic/6101/_`)
  }
  if (evd.itemStack.nameTag === '§r§nうんこクリスタルボール') {
    if (isKanataArmor) {
      player.runCommand(`function items/magic_command/magic/7001/_`)
    } else {
      player.sendMessage(`> §r§4カナタ装備フルでないと使用できません。`)
      player.playSound(`click_on.bamboo_wood_button`);
    }
  }

  // admin
  if (evd.itemStack.nameTag === 'leap') { 
    player.runCommand(`scriptevent kb:leap 7.5 1`)
  }
});
world.afterEvents.itemCompleteUse.subscribe(ev => {
  const player = ev.source;
  if (ev.itemStack.nameTag === "§r§2野菜スープ") {
    player.runCommand("effect @s instant_health 1 0 true");
    player.playSound("random.orb");
  }
  if (ev.itemStack.nameTag === "§r§6健康スープ") {
    player.runCommand("effect @s instant_health 1 1 true");
    player.runCommand("effect @s absorption 90 0 true");
    player.playSound("random.orb");
  }
});
world.afterEvents.entityDie.subscribe(ev => {
  const entity = ev.deadEntity;
  if (entity) {
    if (entity.hasTag("mob:001")) entity.runCommand(`function mob/drop/m001`);
    if (entity.hasTag("mob:002")) entity.runCommand(`function mob/drop/m002`);
    if (entity.hasTag("mob:003")) entity.runCommand(`function mob/drop/m003`);
    if (entity.hasTag("mob:004")) entity.runCommand(`function mob/drop/m004`);
  }
});
world.afterEvents.playerSwingStart.subscribe(ev => {
  const player = ev.player;
  const object = world.scoreboard.getObjective("nowLv");
  const score = object.getScore(player.scoreboardIdentity);
  const itemStack = ev.heldItemStack || `なし`;
  const swingSource = ev.swingSource || `なし`;
  // test
  if (player.hasTag("swingTest")) player.sendMessage(`§lswing!§r\nitemStack.typeId: ${itemStack.typeId}\nitemStack.nameTag: ${itemStack.nameTag}§r\nswingSource: ${swingSource}`);

  switch (itemStack.nameTag) {
    // 杖
    case "§r§f木の杖":
      player.runCommand(`function items/magic_command/wand/1200/_`)
      break;
    case "§r§2石の杖":
      player.runCommand(`function items/magic_command/wand/2200/_`)
      break;
    case "§r§6爆発の杖":
      player.runCommand(`function items/magic_command/wand/3200/_`)
      break;

    // 剣の発動確認
    case "§r§2石の剣":
      swordAttackCheck(5);
      break;
  }
  function swordAttackCheck(lv) {
    if (!(score >= lv)) {
      player.sendMessage(`> §4必要レベルに達していない！§7 ( 必要Lv:§l§e${lv}§r§7 )`)
      player.playSound(`click_on.bamboo_wood_button`)
    }
  }
})


function CreatedropItemMenu(player) {
  const form = new mcui.ModalFormData()
      .title(`アイテム作成`)
      .textField(`ItemID`, `例 : stick`)
      .textField(`アイテム名`,`例 : 黒曜石の短剣`)
      .dropdown(`アイテム種類`, [`剣`,`杖`,`防具`,`食べ物`,`アーティファクト`,`その他`], {
        defaultValueIndex: 0,
      })
      .textField(`アイテム文章説明`, `例 : とても黒い (感想などを入力)`)
      .textField(`アイテム文章説明2`, `例 : 切れ味が鋭い (性能などを入力)`)
      .textField(`アイテム性能`, `例 : ATK +5, SPD +2 (性能などを入力)`)
      .slider(`何Lvから使えるか`, 1, 50, { defaultValue: 1, valueStep: 1 })
      .dropdown(`アイテムランク設定`, [``, ``, ``, ``, ``, ``, ``], {
        defaultValueIndex: 0,
      })
      .submitButton(`アイテム作成`)
      .show(player)
      .then((res) => {
        if (res.canceled === true) return;
        let rank
      switch (res.formValues[7]) {
        case 0 :
          rank = [``,"§r§f"]
          break;
        case 1 :
          rank = [``,"§r§2"]
          break;
        case 2 :
          rank = [``,"§r§6"]
          break;
        case 3 :
          rank = [``,"§r§d"]
          break;
        case 4 :
          rank = [``,"§r§b"]
          break;
        case 5 :
          rank = [``,"§r§4"]
          break;
        case 6 :
          rank = [``,"§r§u"]
          break;
      }
      let s = [`剣`,`杖`,`防具`,`食べ物`,`アーティファクト`,`その他`]
      let id = "minecraft:" + res.formValues[0]
      let lore1 = `§r§7` + res.formValues[3] + `。`
      let lore2 = `§r§7` + res.formValues[4] + `。`
      let option = `§r§a` + res.formValues[5]
      let sort = `§r§f` + s[res.formValues[2]] + ` : ` + rank[0]
      let lv = `§r§a` + res.formValues[6] + `Lv以上が使用可能`
      let itemname = rank[1] + res.formValues[1]
      world.sendMessage(`\n\n§r§f§lPlayer§r: ${player.name}\n§r§f§lid§r: ${id}\n§r§f§lname§r: ${itemname}\n§r§f§llore§r: ${lore1} ${lore2}\n§r§f§loption§r: ${option}\n§r§f§lsort§r: ${sort}\n\n`);
      if (res.formValues[2] == 0 || res.formValues[2] == 2) {
        player.runCommand(`scriptevent cg:give {"typeId":"${id}","nameTag":"${itemname}","lore":["${lore1}","${lore2}","${lv}","§r§7 使用時 ","${option}","","${sort}"],"enchants": [{"name": "mending", "level": 1}]}`);
      } else {
        player.runCommand(`scriptevent cg:give {"typeId":"${id}","nameTag":"${itemname}","lore":["${lore1}","${lore2}","${lv}","§r§7 使用時 ","${option}","","${sort}"]}`);
      }
      });
  }
function dropItemCreateMenu(player) {
  const dropItem = new mcui.ModalFormData()
      .title(`ドロップアイテム作成`)
      .textField(`ItemID`, `例 : rotten_flesh`)
      .textField(`アイテム名`,`例 : 腐った肉`)
      .dropdown(`アイテム種類`, [`ノーマルドロップ`, `レアドロップ`, `ボスドロップ`,`餌`, `その他`], {
        defaultValueIndex: 0,
      })
      .textField(`アイテム文章説明`, `例 : 腐っている。 (感想などを入力)`)
      .slider(`何Gで売れるか`,0, 500, { defaultValue: 10, valueStep: 5 })
      .dropdown(`アイテムランク設定`, [``, ``, ``, ``, ``, ``, ``], {
        defaultValueIndex: 0,
      })
      .submitButton(`ドロップアイテム作成`)
      .show(player)
      .then((res) => {
        if (res.canceled === true) return;
        let rank
     switch (res.formValues[5]) {
        case 0 :
          rank = [``,"§r§f"]
          break;
        case 1 :
          rank = [``,"§r§2"]
          break;
        case 2 :
          rank = [``,"§r§6"]
          break;
        case 3 :
          rank = [``,"§r§d"]
          break;
        case 4 :
          rank = [``,"§r§b"]
          break;
        case 5 :
          rank = [``,"§r§4"]
          break;
        case 6 :
          rank = [``,"§r§u"]
          break;
      }
      let d = [`ノーマルドロップ`, `レアドロップ`, `ボスドロップ`,`餌`, `その他`]
      let id = "minecraft:" + res.formValues[0]
      let lore1 = `§r§7` + res.formValues[3] + `。`
      let G = `§r§f` + res.formValues[4] + `§eG§7で売却可能`
      let sort = `§r§7` + d[res.formValues[2]] + ` : ` + rank[0]
      let itemname = rank[1] + res.formValues[1]
      world.sendMessage(`\n\n§r§f§lPlayer§r: ${player.name}\n§r§f§lItemId§r: ${id}\n§r§f§lItemName§r: ${itemname}\n§r§f§llore§r: ${lore1}\n§r§f§lG§r: ${G}\n§r§f§lsort§r: ${sort}\n\n`);
      player.runCommand(`scriptevent cg:give {"typeId":"${id}","nameTag":"${itemname}","lore":["${lore1}","${G}","","${sort}"]}`);
      });
  }
function CreateMagicMenu(player) {
  const magic = new mcui.ModalFormData()
      .title(`魔法作成`)
      .textField(`魔法名`,`例 : ファイアボール`)
      .dropdown(`アイテム属性`, [`火`,`水`,`土`,`光`,`風`,`無属性`,`うんこクリスタル`], {
        defaultValueIndex: 0,
      })
      .textField(`魔法説明`, `例 : 前方に小さな火の玉を放つ (説明を入力)`)
      .textField(`魔法性能`, `例 : ATK +10 (性能などを入力)`)
      .slider(`消費MP`, 5, 150, { defaultValue: 5, valueStep: 5 })
      .slider(`クールダウン`, 5, 150, { defaultValue: 5, valueStep: 5 })
      .slider(`何Lvから使えるか`, 1, 50, { defaultValue: 1, valueStep: 1 })
      .dropdown(`アイテムランク設定`, [``, ``, ``, ``, ``, ``, ``], {
        defaultValueIndex: 0,
      })
      .submitButton(`魔法作成`)
      .show(player)
      .then((res) => {
        if (res.canceled === true) return;
        let rank
        let property
      switch (res.formValues[7]) {
        case 0 :
          rank = [``,"§r§f"]
          break;
        case 1 :
          rank = [``,"§r§2"]
          break;
        case 2 :
          rank = [``,"§r§6"]
          break;
        case 3 :
          rank = [``,"§r§d"]
          break;
        case 4 :
          rank = [``,"§r§b"]
          break;
        case 5 :
          rank = [``,"§r§4"]
          break;
        case 6 :
          rank = [``,"§r§u"]
          break;
      }
      switch (res.formValues[1]) {
        case 0 :
          property = [`red_dye`,"§r§4","§r§7当たった敵に炎上を付与する。","火"]
          break;
        case 1 :
          property = [`blue_dye`,"§r§3","§r§7当たった敵に弱化を付与する。","水"]
          break;
        case 2 :
          property = [`brown_dye`,"§r§n","§r§7当たった敵に鈍足を付与する。","土"]
          break;
        case 3 :
          property = [`yellow_dye`,"§r§e","none","光"]
          break;
        case 4 :
          property = [`lime_dye`,"§r§a","§r§7当たった敵に浮遊を付与する。","風"]
          break;
        case 5 :
          property = [`gray_dye`,"§r§f","none","無属性"]
          break;
        case 6 :
          property = [`brown_stained_glass`,"§r§n","§r§7カナタ装備を付けていないと使用できない。","うんこクリスタル"]
          break;
      }
      let id = "minecraft:" + property[0]
      let lore1 = `§r§7` + res.formValues[2] + `。`
      let option = `§r§a` + res.formValues[3]
      let mp = `§r§3消費MP : §f` + res.formValues[4]
      let cooldown = `§r§fクールダウン : ` + res.formValues[5]
      let lv = `§r§a` + res.formValues[6] + `Lv以上が使用可能`
      let sort = `§r§f魔法` + ` : ` + rank[0]
      let magicName = property[1] + res.formValues[0]
      world.sendMessage(`\n\n§r§f§lPlayer§r: ${player.name}\n§r§f§l属性§r: ${property[3]}\n§r§f§lmagicName§r: ${magicName}\n§r§f§llore§r: ${lore1}\n§r§f§llv§r: ${lv}\n§r§f§loption§r: ${option}\n§r§f§lsort§r: ${sort}\n\n`);
      if (property[2] != "none") {
            player.runCommand(`scriptevent cg:give {"typeId":"${id}","nameTag":"${magicName}","lore":["${lore1}","${property[2]}","${lv}","§r§7 使用時 ","${option}","${mp}","${cooldown}","","${sort}"]}`);
      } else player.runCommand(`scriptevent cg:give {"typeId":"${id}","nameTag":"${magicName}","lore":["${lore1}","${lv}","§r§7 使用時 ","${option}","${mp}","${cooldown}","","${sort}"]}`);
      });
  }
function tpMenu(player) {
  const tp = new mcui.ActionFormData()
  .title(`§l§5村テレポートメニュー`)
  .button(`§n「最初の村」§fにTPする`)
  .show(player).then((res) => {
    if (res.canceled) return tpMenu(player)
    if (res.selection === 0) {
      player.runCommand(`tp -66.78 -43.00 -17.43 270 0`)
      player.playSound(`random.orb`)
      player.sendMessage(`> §n「最初の村」§fにTPしました`)
    }
  })
}
function mainHandCheck(player,itemname) {
  const inventory = player.getComponent("minecraft:inventory");
      if (inventory) {
        // 選択中のスロットのアイテムを取得
        const selectedItem = inventory.container.getItem(player.selectedSlotIndex);
        if (selectedItem) {
          const itemName = selectedItem.nameTag || selectedItem.typeId;
          if (itemName === itemname) return true;
          else return false;
        }
      }
}

function dropSell(player,itemname) {
  const inventory = player.getComponent("minecraft:inventory");
      if (inventory) {
        // 選択中のスロットのアイテムを取得
        const selectedItem = inventory.container.getItem(player.selectedSlotIndex);
        if (selectedItem) {
          const itemName = selectedItem.nameTag || selectedItem.typeId;
          const amount = selectedItem.amount;
          const sell = {
            // fishing
            "§r§f普通の餌" : 10,
            "§r§2すごい餌" : 30,
            "§r§6とてもすごい餌" : 50,
            "§r§fタラ" : 25,
            "§r§fわかめ" : 20,
            "§r§2シャケ" : 40,

            // mob:001
            "§r§f腐った肉" : 5,
            "§r§2ゾンビの硬肉" : 20,
            "§r§2ニンジン" : 20,
            "§r§2じゃがいも" : 20,

            // mob:002
            "§r§f骨" : 10,
            "§r§2良質な骨のかけら" : 40,
            "§r§2骨の粉" : 20,
            "§r§6骨のかたまり" : 60,
            "§r§6水の欠片" : 150,

            // mob:003
            "§r§f少し腐った肉" : 15,
            "§r§2ハスクの硬肉" : 30,
            "§r§2砂" : 20,
            "§r§6金のニンジン" : 100,
            "§r§6火の欠片" : 150,

            // mob:004
            "§r§fハッパ" : 5,
            "§r§2オークの原木" : 25,
            "§r§2りんご" : 20,
            "§r§6金のりんご" : 150
          };
          if (sell[itemName]) {
            player.runCommand(`scoreboard players add @s G ${sell[itemName] * amount}`);
            player.runCommand(`replaceitem entity @s slot.weapon.mainhand 0 air`);
            player.sendMessage(`> ${sell[itemName] * amount}§eG§f売れました§7 (内訳: ${itemName} ${amount}個§7)`);
            player.playSound(`random.orb`);
          } else {
            player.sendMessage(`> §4売れるアイテムではありません！`)
            player.playSound(`click_on.bamboo_wood_button`)
          }
      }
    }
}
function armorCheck(player,itemName) {// 装備コンポーネントを取得
  const equippable = player.getComponent("minecraft:equippable");
  if (!equippable) return; // 装備がない場合スキップ

  // 各スロットの装備を取得
  const helmet = equippable.getEquipment(mc.EquipmentSlot.Head);
  const chestplate = equippable.getEquipment(mc.EquipmentSlot.Chest);
  const leggings = equippable.getEquipment(mc.EquipmentSlot.Legs);
  const boots = equippable.getEquipment(mc.EquipmentSlot.Feet);
  if (helmet.nameTag === itemName || chestplate.nameTag === itemName || leggings.nameTag === itemName || boots.nameTag === itemName) return true;
  else return false;
}
function opMenu(player) {
  const form = new mcui.ActionFormData()
      .title(`オペレーターメニュー`)
      .button(`1. クリエイティブになる`)
      .button(`2. アドベンチャーになる`)
      .button(`3. アイテムメニューを開く`)
      .button(`4. 武器メニューを開く`)
      .button(`5. アーティファクトメニューを開く`)
      .button(`6. パッチノート`)
      .show(player).then((res) => {
        switch (res.selection) {
          case 0:
            player.runCommand(`gamemode creative`)
            player.sendMessage(`> §sクリエイティブモード§fになりました`)
            break;
          case 1:
            player.runCommand(`gamemode adventure`)
            player.sendMessage(`> §sアドベンチャーモード§fになりました`)
            break;
          case 2:
            dropItemMenu(player)
            break;
          case 3:
            weaponItemMenu(player)
            break;
          case 4:
            artifactItemMenu(player)
            break;
          case 5:
            patchNote(player)
            break;
        }
      })
}
function dropItemMenu(player) {
  const items = [
    "腐った肉","ゾンビの硬肉","ニンジン","じゃがいも",
    "骨","良質な骨のかけら","骨の粉","骨のかたまり","水の欠片",
    "少し腐った肉","ハスクの硬肉","砂","金のニンジン","火の欠片",
    "ハッパ","オークの原木","りんご","金のりんご"
  ]
  const itemsId = [
    "loot:0011","loot:0012","loot:0013","loot:0014",
    "loot:0021","loot:0022","loot:0023","loot:0024","loot:0025",
    "loot:0031","loot:0032","loot:0033","loot:0034","loot:0035",
    "loot:0041","loot:0042","loot:0043","loot:0044"
  ]
  const form = new mcui.ActionFormData()
      .title(`ドロップアイテムメニュー`)
      for (let i = 1; i <= items.length; i++) {
        form.button(`${i}. ${items[i-1]}`);
      }
      form.show(player).then((res) => {
        if (!(res.canceled)) {
          giveItem(player, itemsId[res.selection], items[res.selection]);
        }
      });
}
function weaponItemMenu(player) {
  const items = [
    "木の剣","木の杖","石の剣","石の杖"
  ]
  const itemsId = [
    "items/weapon/1100","items/weapon/1200","weapon:2100","weapon:2200"
  ]
  const form = new mcui.ActionFormData()
      .title(`武器メニュー`)
      for (let i = 1; i <= items.length; i++) {
        form.button(`${i}. ${items[i-1]}`);
      }
      form.show(player).then((res) => {
        if (!(res.canceled)) {
          giveItem(player, itemsId[res.selection], items[res.selection]);
        }
      });
}
function artifactItemMenu(player) {
  const items = [
    "ステータス確認","オペレーターメニュー",
    "すばやさのはね",
    "毒除けクリスタル","命の結晶","吸血の粉",
    "魔法のクリスタル"
  ]
  const itemsId = [
    "items/artifacts/0000","items/artifacts/0001",
    "items/artifacts/1001",
    "items/artifacts/2001","items/artifacts/2002","items/artifacts/2003",
    "items/artifacts/3001"
  ]
  const form = new mcui.ActionFormData()
      .title(`アーティファクトメニュー`)
      for (let i = 1; i <= items.length; i++) {
        form.button(`${i}. ${items[i-1]}`);
      }
      form.show(player).then((res) => {
        if (!(res.canceled)) {
          giveItem(player, itemsId[res.selection], items[res.selection]);
        }
      });
}
function giveItem(player, itemId, itemName) {
  const form = new mcui.ModalFormData()
    .title(`${itemName}`)
    .slider(`個数`, 1, 16, { defaultValue: 1, valueStep: 1 })
    .show(player).then((res) => {
      for (let i = 0; i < res.formValues[0]; i++) {
        if (itemId.includes("/")) {
          player.runCommand(`function ${itemId}`);
        } else {
          player.runCommand(`structure load "${itemId}" ~ ~1 ~`);
        }
      }
      player.sendMessage(`> §s${itemName}§fを§s${res.formValues[0]}個§fスポーンさせました`)
    })
}
function patchNote(player) {
  const form = new mcui.ActionFormData()
      .title(`パッチノート`)
      .header(`v1.9.0`)
      .label(`杖の攻撃方法を使用検知から攻撃検知に変更`)
      .divider()
      .header(`v1.8.0`)
      .label(`オペレーターメニューを追加`)
      .divider()
      .header(`v1.7.1`)
      .label(`アプデでLootTableがバグっていたためscriptで死んだらドロップさせるように変更`)
      .divider()
      .header(`v1.7.0`)
      .label(`焚火で回復ができるように`)
      .divider()
      .header(`v1.6.1`)
      .label(`スケルトンの移動速度を遅くした`)
      .divider()
      .header(`v1.5.0`)
      .label(`敵がスポーンするときに周りに敵がいた場合スポーンしなく`)
      .divider()
      .header(`v1.4.1`)
      .label(`ステータス[XPボーナス]を追加、アーティファクト[魔法のクリスタル]を追加`)
      .divider()
      .header(`v1.4.0`)
      .label(`ステータス[吸血]を追加、アーティファクト[吸血の粉]を追加`)
      .divider()
      .header(`v1.3.1`)
      .label(`石の杖のMP消費量を少なくして、木の杖と石の杖が敵に当たったら貫通せず消えるようにした`)
      .divider()
      .header(`v1.3.0`)
      .label(`爆発の杖作成`)
      .divider()
      .header(`v1.2.1`)
      .label(`stage1の敵から石の剣と石の杖が出るように`)
      .divider()
      .header(`v1.2.0`)
      .label(`武器に必要レベルを設定`)
      .divider()
      .header(`v1.1.0`)
      .label(`貴重店作成`)
      .divider()
      .header(`v1.0.0`)
      .label(`魔法ジョブを作成した`)
      .divider()
      .header(`v0.2.0`)
      .label(`アーティファクトの装着方法をエンダーチェストに変更した、ステータス確認でアーティファクトの確認をできる`)
      .divider()
      .header(`v0.1.3`)
      .label(`スポーンした敵のHPが20に強制的になるバグを直した`)
      .divider()
      .header(`v0.1.2`)
      .label(`ステージ移動時に出るsubtitleの推奨レベルを危険度に変更`)
      .divider()
      .header(`v0.1.1`)
      .label(`健康スープ追加`)
      .divider()
      .header(`v0.1.0`)
      .label(`ステージギミック追加`)
      .divider()
      .header(`v0.0.3`)
      .label(`レベルアップ時の音を変更`)
      .divider()
      .header(`v0.0.2`)
      .label(`釣り機能の土台を作った`)
      .divider()
      .header(`v0.0.1`)
      .label(`レベルアップに必要なxpの計算をうまく出来ていなかったため計算`)
      .divider()
      .header(`v0`)
      .label(`パッチノートを追加`)
      .divider()
      .show(player)
}