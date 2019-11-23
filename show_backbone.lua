--[[

 This macro will highlight all the ligands in the scene at once

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

    N = Search_GetAtoms(">>> N");
    CA = Search_GetAtoms(">>> CA");
    C = Search_GetAtoms(">>> C");
    O = Search_GetAtoms(">>> O");
    CB = Search_GetAtoms(">>> CB");
				     
    Selection_Change("add", N);
    Selection_Change("add", CA);
    Selection_Change("add", C);
    Selection_Change("add", O);
    Selection_Change("add", CB);
    Selection_Change("remove", Search_GetResidues(">> HOH"));

    Command_ShowAtomsBonds(true);
    Command_ShowRibbons(true);
    Command_SetAtomsBondsRender("sticks+balls");
    Command_ShowResidueLabels(true);
    return "Success: Backbone + CB atoms are shown ";
end
