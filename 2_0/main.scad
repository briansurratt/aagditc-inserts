include <constants.scad>;
include  <character-miniatures.scad>;
include  <large-miniatures.scad>;
include <xeno-trays.scad>;
include <common.scad>;
include <lids.scad>;
include <detents.scad>;
include <assets-hazzards.scad>;

// characterMinisAlpha();
// characterMinisBravo();
// larageCharacterBox();
// versionText("1.1.1", 25,50);
// xenoTray();
assetBox1();

translate([0,assert_box_y + 10,0]) {
    assetBox2();
}









