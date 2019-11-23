--[[

This macro colors red and white

]]

function main ()
 Selection_All()
 count=0
 Command_ShowRibbons(false);
 residues=Selection_GetResidues()
 for residue in residues do

  Selection_Change("add", residue)
  count=count+1;
  if (count < 30) then
   Command_ColoringRibbons("mono", Color_RGB(255, 255, 255));
  else
   Command_ColoringRibbons("mono", Color_RGB(0, 0, 255));
  end
  Selection_Change("remove", residue)
 end
 Command_ShowRibbons(true);

end
