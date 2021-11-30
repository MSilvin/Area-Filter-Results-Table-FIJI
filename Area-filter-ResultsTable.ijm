/*Marine SILVIN 
 * Imaging Centre IGBMC
 * silvinm@igbmc.fr
 * November 2021

 * 
 * Requirement:
 * 	- Fiji (ImageJ) version 1.53 or more recent
 * 	- Results Table
 * 	- "Area" column
 * 	
 * How to use:
 *  	Drag&Drop in Fiji
 *  	Click on "run"
 */


for (row=0; row<nResults; row++) {
	lignes = getResult("Area", row);
	label = getResultLabel(row);
	if ( lignes < 150) {
		Table.deleteRows(row, row);
		print("La cellule labellisée:", label, "avec une aire de:", lignes, "a été supprimé"); 
		row=row-1;
	}
	
}

	