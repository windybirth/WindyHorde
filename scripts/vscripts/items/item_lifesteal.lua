--[[ ============================================================================================================
	Author: Rook
	Date: January 26, 2015
	Called when the unit lands an attack on a target.  Applies a brief lifesteal modifier if not attacking a structure 
	(Lifesteal blocks in KV files will normally allow the unit to heal when attacking these).
================================================================================================================= ]]
function modifier_lifesteal_datadriven(keys)
	if keys.target.GetInvulnCount == nil then
		keys.ability:ApplyDataDrivenModifier(keys.attacker, keys.attacker, keys.modifier, {duration = 0.03})
	end
end