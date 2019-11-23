---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by sakuma.
--- DateTime: 11/24/19 2:09 AM
---

--[[

This macro colors red and white

]]

function main ()
    Selection_All();
    Command_ShowAtomsBonds(false);
    Command_ShowRibbons(false);
    Command_ShowSurfaces(false);
    Command_ShowWaters(false);
    Command_ShowHydrogens(false);
    Command_ShowAtomLabels(false);
    Command_ShowResidueLabels(false);
    Command_ShowHetAtomsBonds(false);
    Command_ShowHetSurfaces(false);
    Selection_Clear();

    count=0
    --residues=Search_GetResidues(">>> N");
    residues = Search_GetResidues(" > A > ");
    --Command_ShowRibbons(true);
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
    Selection_Clear()
    Selection_All()
    Command_ShowRibbons(true);

end