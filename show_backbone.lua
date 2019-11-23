--[[

 This macro will highlight all the ligands in the scene at once

]]

function main ()
    Command_Load("1MBN", "PDB", "HTTP", "https://files.rcsb.org/download/1MBN.pdb");
    bb = List_Make();
    N = Search_GetAtoms(">>> N");
    List_Add(bb, N);
    CA = Search_GetAtoms(">>> CA");
    List_Add(bb, CA);
    C = Search_GetAtoms(">>> C");
    List_Add(bb, C);
    O = Search_GetAtoms(">>> O");
    List_Add(bb, O);
    CB = Search_GetAtoms(">>> CB");
    List_Add(bb, CB);

    Selection_Clear();     
    Selection_Change("replace", bb);    

    Command_ShowAtomsBonds(true);
    Command_ShowRibbons(true);
    Command_ShowResidueLabels(false);
    return "Success: Backbone + CB atoms are shown ";
end
