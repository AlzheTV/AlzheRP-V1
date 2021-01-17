local emitters = {
	
  "se_walk_radio_d_picked",
}

Citizen.CreateThread(function()
  for i = 1, #emitters do
    SetStaticEmitterEnabled(emitters[i], false)
  end
end)