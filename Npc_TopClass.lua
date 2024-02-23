local NPC_ID = 45002
 
local T = {
        [1] = {" |TInterface\\icons\\INV_Sword_27.png:25|t|cFFA52A2A Warrior", "660000"},
        [2] = {" |TInterface\\icons\\INV_Hammer_01.png:25|t|cFFF58CBA Paladin", "FF0099"},
        [3] = {" |TInterface\\icons\\INV_Weapon_Bow_07.png:25|t|cFF65CD19 Hunter", "CC6611"},
        [4] = {" |TInterface\\icons\\INV_ThrowingKnife_04.png:25|t|cFFFFF569 Rogue", "CCFF00"},
        [5] = {" |TInterface\\icons\\INV_Staff_30.png:25|t|cFFFFFFFF Priest", "FFFFFF"},
        [6] = {" |TInterface\\icons\\Spell_Deathknight_ClassIcon.png:25|t|cFFC41F3B Death Knight", "4D4D51"},
        [7] = {" |TInterface\\icons\\inv_jewelry_talisman_04.png:25|t|cFF0070DE Shaman", "0000CC"},
        [8] = {" |TInterface\\icons\\inv_staff_13.png:25|t|cFF69CCF0 Mage", "33FFFF"},
        [9] = {" |TInterface\\icons\\spell_nature_faeriefire.png:25|t|cFF9482C9 Warlock", "660099"},
        [11] = {" |TInterface\\icons\\Ability_Druid_Maul.png:25|t|cFFFF7d0A Druid", "FF6600"},
		-- [10] = {" |TInterface\\icons\\inv_weapon_glave_01.png:25|t|cFFa330c9 Demon Hunter", "CC6611"}
};
 
function clica(event, player, unit)
        for k, v in pairs(T) do
                player:GossipMenuAddItem(0, "TOP 5 |cff"..v[2]..v[1], 0, k)
        end
       
        player:GossipSendMenu(1, unit)
end
 
function seleciona(event, player, unit, arg2, intid)
    if (intid > 0) then
        player:SendBroadcastMessage("|cff"..T[intid][2]..T[intid][1])
               
                local resultado = CharDBQuery("SELECT name, totalKills FROM characters WHERE class='"..intid.."' ORDER BY totalKills DESC LIMIT 5")
        repeat
                        local playername = resultado:GetString(0);
                        local kills = resultado:GetUInt32(1);
                        player:SendBroadcastMessage("|cFF33CCFFPlayer: |r ".. playername .." ,  |cFF33CCFFWith: |r" .. kills .. " kills")
						player:GossipComplete()
        until not resultado:NextRow()
		
    end
end
RegisterCreatureGossipEvent(NPC_ID, 1, clica)
RegisterCreatureGossipEvent(NPC_ID, 2, seleciona)