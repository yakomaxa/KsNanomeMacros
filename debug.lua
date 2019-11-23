--[[

This macro colors red and white

]]

function main ()
 Selection_Clear();
 residues=Search_GetResidues(" > A > ");
 --residues = Chain_GetResidues(chain)
 count=0
 Command_ShowRibbons(false);
 for residue in residues do
  Selection_Clear()
  Selection_Change("add", residue)
  count=count+1;
  if (count < 30) then
   Command_ColoringRibbons("mono", Color_RGB(255, 255, 255));
  else
   Command_ColoringRibbons("mono", Color_RGB(0, 0, 255));
  end
 end
  Command_ShowRibbons(true);

end
