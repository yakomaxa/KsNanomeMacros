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
 --total = List_Length(residues);
 total=100
 --Command_ShowRibbons(true);
 for residue in residues do
  Selection_Change("add", residue)
  count=count+1;
  if (count < total/2) then
   r=count*2
   g=count*2
   b=total
  else
   r=total
   g=2*(total-count)
   b=2*(total-count)
  end
  rn=math.floor(r*225/total)
  gn=math.floor(g*255/total)
  bn=math.floor(b*225/total)
  --Command_ColoringRibbons("mono", Color_RGB(rn, gn, bn));
  Command_ColoringRibbons("mono", Color_RGB(0, 100, 0));
  Selection_Change("remove", residue)
 end
 Selection_Clear()
 Selection_All()
 Command_ShowRibbons(true);

end
