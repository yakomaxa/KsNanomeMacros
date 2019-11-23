--[[

This macro colors red and white

]]

function main ()
    currentSelection = Selection_GetAtoms()
    Command_ShowRibbons(true)
    total = List_Length(Selection_GetResidue());
    residues = Selection_GetResidues();
    Selection_Clear();
    for idx, residue in List_Pairs(residues) do
        Selection_Change("replace", residue);
        if (idx < total/2) then
            Command_ColoringRibbons("mono", Color_RGB(255, 255, 255));
        else
            Command_ColoringRibbons("mono", Color_RGB(255, 0, 0));
        end;
    end;
    Selection_Change("replace",currentSelection)
end;
