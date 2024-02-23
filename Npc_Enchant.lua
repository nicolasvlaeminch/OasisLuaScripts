local npcid = 85001

local T = {
       ["Menu"] = {
               {"|TInterface/ICONS/inv_helmet_03:40|t Cabeza", 0},
               {"|TInterface/ICONS/inv_misc_desecrated_plateshoulder:40|t Hombros", 2},
               {"|TInterface/ICONS/inv_chest_chain_03:40|t Pecho", 4},
               {"|TInterface/ICONS/inv_pants_04:40|t Piernas", 6},
               {"|TInterface/ICONS/inv_boots_plate_01:40|t Pies", 7},
               {"|TInterface/ICONS/inv_bracer_14:40|t Muñecas", 8},
               {"|TInterface/ICONS/inv_misc_desecrated_plategloves:40|t Manos", 9},
               {"|TInterface/ICONS/inv_misc_cape_18:40|t Capa", 14},
               {"|TInterface/ICONS/inv_sword_33:40|t Mano derecha", 15},
               {"|TInterface/ICONS/inv_sword_104:40|t Arma de dos manos", 151},
               {"|TInterface/ICONS/inv_sword_34:40|t Mano Izquierda", 16},
               {"|TInterface/ICONS/inv_shield_60:40|t Escudo", 161};
       },
     
       [0] = { -- Headpiece
               {"+30 poder con hechizos y 20 indice de golpe critico", 3820, false},
               {"+30 poder con hechizos y 10 de mana cada 5 s", 3819, false},
               {"+37 aguante y +20 indice de defensa", 3818, false},
               {"+50 poder de ataque y +20 indice de golpe critico", 3817, false},
               {"+30 aguante y +25 indice de temple", 3842, false},
               {"+50 poder de ataque y +20 indice de temple", 3795, false},
               {"+29 poder con hechizos y +20 indice de temple", 3797, false};
       },

       [2] = { -- Shoulders
			   {"+120 poder de ataque y +15 indice de golpe critico (Requiere Inscripcion)", 3835, false},
			   {"+70 poder con hechizos y +15 indice de golpe critico (Requiere Inscripcion)", 3838, false},
			   {"+70 poder con hechizos y +8 mana cada 5 s (Requiere Inscripcion)", 3836, false},
			   {"+60 indice de esquivar y +15 indice de defensa (Requiere Inscripcion)", 3837, false},
               {"+40 poder de ataque y +15 indice de temple", 3793, false},
               {"+23 poder con hechizo y +15 indice de temple", 3794, false},
               {"+30 aguante y +15 indice de temple", 3852, false},
               {"+40 poder de ataque y +15 indice de golpe critico", 3808, false},
               {"+24 poder con hechizos y +8 mana cada 5 s", 3809, false},
               {"+20 indice de esquivar y +15 indice de defensa", 3811, false},
               {"+24 poder con hechizos y +15 indice de golpe critico", 3810, false};
       },

       [4] = { -- Chest
               {"+10 todas las estadisticas", 3832, false},
               {"+275 salud", 3297, false},
               {"+10 mana cada 5 s", 2381, false},
               {"+20 indice de temple", 3245, false},
               {"+22 indice de defensa", 1953, false};
       },

       [6] = { -- Legs
               {"+40 indice de temple y +28 aguante", 3853, false},
               {"+55 aguante y +22 agilidad", 3822, false},
               {"+75 poder de ataque y +22 indice de golpe critico", 3823, false},
               {"+50 poder con hechizos y +20 espiritu", 3719, false},
               {"+50 poder con hechizos y +30 aguante", 3721, false};
       },    

       [7] = { -- Boots
               {"+32 poder de ataque", 1597, false},
               {"+15 aguante y aumento minimo de velocidad", 3232, false},
               {"+16 agilidad", 983, false},
               {"+18 espiritu", 1147, false},
               {"+7 salud y mana cada 5 s", 3244, false},
               {"+12 indice de golpe y +12 indice de golpe critico", 3826, false},
               {"+22 aguante", 1075, false};
       },

       [8] = { -- Bracers
               {"+40 aguante", 3850, false},
               {"+30 poder con hechizos", 2332, false},
               {"+50 poder de ataque", 3845, false},
               {"+18 espiritu", 1147, false},
               {"+15 indice de pericia", 3231, false},
               {"+6 todas las estadisticas", 2661, false},
               {"+16 intelecto", 1119, false};
       },

       [9] = { -- Gloves
               {"+16 indice de golpe critico", 3249, false},
               {"+2% amenaza y 10 indice de parada", 3253, false},
               {"+44 poder de ataque", 1603, false},
               {"+20 agilidad", 3222, false},
               {"+20 indice de golpe", 3234, false},
               {"+15 indice de pericia", 3231, false},
               {"+28 poder con hechizos", 3246, false};
       },

       [14] = { -- Cloak
               {"Sigilo aumentado y +10 agilidad", 3256, false},
               {"+10 espiritu y 2% amenaza reducida", 3296, false},
               {"+16 indice de defensa", 1951, false},
               {"+23 indice de celeridad", 3831, false},
               {"+225 armadura", 3294, false},
               {"+22 agilidad", 1099, false},
               {"+20 resistencia a lo Arcano", 1262, false};
       },

       [15] = {
               -- Main Hand
               {"+50 aguante", 3851, false},
               {"+25 indice de golpe y +25 indice de golpe critico", 3788, false},
               {"Rabiar", 3789, false},
               {"Magia negra", 3790, false},
               {"+63 poder con hechizos", 3834, false},
               {"+65 poder de ataque", 3833, false},
               {"Arma rompehielo", 3239, false},
               {"Guardian de vida", 3241, false},
               {"Drenador de sangre", 3870, false},
               {"Amparo de hojas", 3869, false},
               {"+26 agilidad", 1103, false},
               {"+45 espiritu", 3844, false},
               {"Verdugo", 3225, false},
               {"Mangosta", 2673, false},
             
               -- Two-Handed
               {"+110 poder de ataque", 3827, true},
               {"+140 poder de ataque contra no-muertos", 3247, true},
               {"Asesinato de gigantes", 3251, true},
               {"+81 poder con hechizos", 3854, true};
       },
     
       [16] = {
               -- Offhand
               {"+50 aguante", 3851, false},
               {"+25 indice de golpe y +25 indice de golpe critico", 3788, false},
               {"Rabiar", 3789, false},
               {"Magia negra", 3790, false},
               {"+63 poder con hechizos", 3834, false},
               {"+65 poder de ataque", 3833, false},
               {"Arma rompehielo", 3239, false},
               {"Guardian de vida", 3241, false},
               {"Drenador de sangre", 3870, false},
               {"Amparo de hojas", 3869, false},
               {"+26 agilidad", 1103, false},
               {"+45 espiritu", 3844, false},
               {"Verdugo", 3225, false},
               {"Mangosta", 2673, false},
             
               -- Shields
               {"+20 indice de defensa", 1952, true},
               {"+25 intelecto", 1128, true},
               {"+15 indice de bloqueo con escudo", 2655, true},
               {"+12 indice de temple", 3229, true},
               {"+18 aguante", 1071, true},
               {"+36 valor de bloqueo", 2653, true};
       },
};
local pVar = {};

function Enchanter(event, plr, unit)
       pVar[plr:GetName()] = nil;

       for _, v in ipairs(T["Menu"]) do
               plr:GossipMenuAddItem(3, ""..v[1].."", 0, v[2])
       end
       plr:GossipSendMenu(1, unit)
end

function EnchanterSelect(event, plr, unit, sender, intid, code)
       if (intid < 500) then
               local ID = intid
               local f
               if(intid == 161 or intid == 151) then
                       ID = math.floor(intid/10)
                       f = true
               end
               pVar[plr:GetName()] = intid;
               if(T[ID]) then
                       for i, v in ipairs(T[ID]) do
                               if((not f and not v[3]) or (f and v[3])) then
                                       plr:GossipMenuAddItem(3, ""..v[1].."", 0, v[2])
                               end
                       end
               end
               plr:GossipMenuAddItem(3, "[Volver]", 0, 500)
               plr:GossipSendMenu(1, unit)
       elseif (intid == 500) then
               Enchanter(event, plr, unit)
       elseif (intid >= 900) then
               local ID = pVar[plr:GetName()]
               if(ID == 161 or ID == 151) then
                       ID = math.floor(ID/10)
               end
               for k, v in pairs(T[ID]) do
                       if v[2] == intid then
                               local item = plr:GetEquippedItemBySlot(ID)
                               if item then
                                       if v[3] then
                                               local WType = item:GetSubClass()
                                               if pVar[plr:GetName()] == 151 then
                                                       if(WType == 1 or WType == 5 or WType == 6 or WType == 8 or WType == 10) then
                                                               item:ClearEnchantment(0,0)
                                                               item:SetEnchantment(intid, 0, 0)
															   plr:CastSpell(plr, 36937)
                                                       else
                                                               plr:SendAreaTriggerMessage("No tienes un arma de dos manos equipada!")
                                                       end    
                                               elseif pVar[plr:GetName()] == 161 then
                                                       if(WType == 6) then
                                                               item:ClearEnchantment(0,0)
                                                               item:SetEnchantment(intid, 0, 0)
															   plr:CastSpell(plr, 36937)
                                                       else
                                                               plr:SendAreaTriggerMessage("No tienes un Escudo equipado!")
                                                       end
                                               end
                                        elseif pVar[plr:GetName()] == 16 then
											local WTypeOff = item:GetClass()
                                                  if not (WTypeOff == 4) then
                                                           item:ClearEnchantment(0,0)
                                                           item:SetEnchantment(intid, 0, 0)
														   plr:CastSpell(plr, 36937)
                                                  else
                                                           plr:SendAreaTriggerMessage("No tienes una Mano Izquierda equipada!")
                                                  end
                                       else
                                               item:ClearEnchantment(0,0)
                                               item:SetEnchantment(intid, 0, 0)
                                               plr:CastSpell(plr, 36937)
                                       end
                               else
                                       plr:SendAreaTriggerMessage("No tienes ningun objeto equipado de este tipo!")
                               end
                       end
               end
               EnchanterSelect(event, plr, unit, sender, pVar[plr:GetName()], nil)
       end
end

RegisterCreatureGossipEvent(npcid, 1, Enchanter)
RegisterCreatureGossipEvent(npcid, 2, EnchanterSelect)