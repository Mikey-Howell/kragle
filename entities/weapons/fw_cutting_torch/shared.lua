AddCSLuaFile()

SWEP.PrintName = "Cutting Torch"
SWEP.Author = "Mikey Howell"
SWEP.Instructions = "Use to break props and other stuff."

SWEP.Category = "Faction Wars"
SWEP.Spawnable = true
SWEP.AdminOnly = true

SWEP.ViewModel = "models/weapons/v_IRifle.mdl"
SWEP.WorldModel = "models/weapons/w_IRifle.mdl"
SWEP.UseHands = true

SWEP.DrawAmmo = true

SWEP.Weight = 5

SWEP.Primary.ClipSize = 10000
SWEP.Primary.DefaultClip = 10000
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "ar2"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

function SWEP:Initialize()
    self:SetHoldType("pistol")
end


function SWEP:PrimaryAttack()
    self:SetNextPrimaryFire(CurTime() + 2) -- Cooldown

    local eyeTrace = self.Owner:GetEyeTrace()

	  if (not self:CanPrimaryAttack()) then return end

	  self.Weapon:EmitSound("Weapon_StunStick.Activate") -- Cutting torch sound

    if eyeTrace.Entity:GetClass() != "prop_physics" then return end -- Check if it isn't deleting anything major (worldspawn)

    eyeTrace.Entity:Remove()
end
