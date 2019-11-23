--[[

This macro colors red and white

]]

function main ()
 --Selection_Clear();
 --residues=Search_GetResidues(" > A > ");
 --Selection_Change("add", chainA);
 --Selection_Change("remove", Search_GetResidues(">> HOH"));
 --total = List_Length(Selection_GetAtoms(chain));
 --residues = Chain_GetResidues(chain)
 --for residue in residues do
 --if Residue_GetName(residue) ~= "HOH" then
 --print("HOH")
 --else
 --Selection_Clear()
 --Selection_Change("add", residue)
 --count=count+1;
 --if (count < 30) then
 Selection_All();
 Command_ShowRibbons(false);
 Command_ColoringRibbons("mono", Color_RGB(255, 255, 255));
 Command_ShowRibbons(true);
  --   else
--      Command_ColoringRibbons("mono", Color_RGB(255, 0, 0));
--     end
--    end
--   end
   --return total .. "residues"
end
