--[[ 	Author: Hewdraw
		Date: 17.05.2015	]]

function MoonShardActive( keys )
	local caster = keys.caster
	local target = keys.target
	local ability = keys.ability
	local modifier = keys.modifier

	if caster:IsRealHero() and target:IsRealHero() and not caster:HasModifier("modifier_arc_warden_tempest_double") and not target:HasModifier("modifier_arc_warden_tempest_double") then
		AddStacks(ability, caster, target, modifier, 1, true)
		target:EmitSound("Item.MoonShard.Consume")
		caster:RemoveItem(ability)
	end
end