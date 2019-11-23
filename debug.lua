--[[

This macro colors red and white

]]

function main ()
 Selection_Clear();
 chainA=Search_GetResidues(" > A > ");
 Selection_Change("add", chainA);
 Selection_Change("remove", Search_GetResidues(">> HOH"));
 total = List_Length(Selection_GetResidue());
 return total .. "residues"
end
