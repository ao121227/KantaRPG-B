import { world } from "@minecraft/server";

export function getScoreboard(player, objective) {
    const object = world.scoreboard.getObjective(objective);
    const score = object.getScore(player.scoreboardIdentity);
    return score | 0;
}