--[[

This macro colors red and white

]]

function main ()
 Selection_Clear();
 chainA=Search_GetResidues(" > A > ");
 Selection_Change("add", chainA);
 Selection_Change("remove", Search_GetResidues(">> HOH"));
 total = List_Length(Selection_GetAtoms(chain));
 Selection_Clear();
 for idx,residue in List_Pairs(Chain_GetResidues(chain)) do
  Selection_Change("add", residue);
  if (idx < total/2) then
   Command_ColoringRibbons("mono", Color_RGB(255, 255, 255));
  else
   Command_ColoringRibbons("mono", Color_RGB(255, 0, 0));
  end;
 end
 return total .. "residues"
end
