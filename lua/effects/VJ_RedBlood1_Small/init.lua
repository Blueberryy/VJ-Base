if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
/*--------------------------------------------------
	*** Copyright (c) 2012-2016 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/

/*-- Blood Types ---------------------
	Red 		= Color(130,19,10)
	Yellow 		= Color(255,221,35)
-------------------------------------- */
function EFFECT:Init(data)
	local origin = data:GetOrigin()
	local color = data:GetStart()
	if color == Vector(0.12500095367432,0.12500095367432,0.12500095367432) then color = Color(130,19,10) end
	
	self.Emitter = ParticleEmitter(origin)
	for buzz = 0,6 do
		local Mist = self.Emitter:Add("particle/smokesprites_000"..math.random(1,9),origin)
		if (Mist) then
			Mist:SetVelocity(Vector(math.random(-30,30),math.random(-30,30),math.random(-50,50)))
			Mist:SetDieTime(math.Rand(1.8,2))
			Mist:SetStartAlpha(255)
			Mist:SetEndAlpha(0)
			Mist:SetStartSize(10)
			Mist:SetEndSize(40)
			Mist:SetRoll(1)
			Mist:SetRollDelta(0)			
			Mist:SetAirResistance(200)			
			Mist:SetGravity(Vector(math.Rand(-10,10),math.Rand(-10,10),math.Rand(-100,-100)))
			Mist:SetColor(color.r,color.g,color.b)
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function EFFECT:Think()
	return false
end
---------------------------------------------------------------------------------------------------------------------------------------------
function EFFECT:Render()
end
/*--------------------------------------------------
	*** Copyright (c) 2012-2016 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/