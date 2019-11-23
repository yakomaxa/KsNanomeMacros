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
 for complex in List_Iterator(Workspace_GetComplexes()) do
  molecule = Complex_GetCurrentMolecule(complex);
  for chain in List_Iterator(Molecule_GetChains(molecule)) do
   total = List_Length(Selection_GetAtoms(chain));
   count=0
   for residue in List_Iterator(Chain_GetResidues(chain)) do
    if Residue_GetName(residue) ~= "HOH" then
     print("HOH")
    else
     Selection_Clear();
     Selection_Change("add", residue);
     if (idx < total/2) then
      Command_ColoringRibbons("mono", Color_RGB(255, 255, 255));
     else
      Command_ColoringRibbons("mono", Color_RGB(255, 0, 0));
     end
    end
   end
   return total .. "residues"
  end
 end
end
