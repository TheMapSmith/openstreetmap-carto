// STYLE.MSS //

Map {
  background-color: @land-color;
}

@book-fonts:    "Avenir Book";
@bold-fonts:    "Avenir Heavy";

@oblique-fonts: "Avenir Book Oblique";

@water-color: #b5d0d0;
@land-color: #f2efe9;


// LANDCOVER.MSS //

// --- Parks, woods, other green things ---

@forest: #a0cf85;
@grass: #cfeca8; // also meadow, common, garden, village_green, conservation
@golf_course: #b5e3b5;
@natural: #c6e4b4; // also grassland
@park: #b6fdb6; // also recreation_ground
@wood: #aed1a0;
@vineyard: #abdf96;

// --- sports ---

@stadium: #3c9; // also sports_centre
@track: #74dcba;
@pitch: #8ad3af;

// --- "base" landuses ---

@residential: #E1E1E1;      // Lch(89,0,0)
@residential-line: #B9B9B9; // Lch(75,0,0)
@retail: #FFD6D1;           // Lch(89,16,30)
@retail-line: #D99C95;      // Lch(70,25,30)
@commercial: #F2DAD9;       // Lch(89,8.5,25)
@commercial-line: #D1B2B0;  // Lch(75,12,25)
@industrial: #EBDBE8;       // Lch(89,9,330)
@industrial-line: #C6B3C3;  // Lch(75,11,330)
@railway: @industrial;
@railway-line: @industrial-line;
@farmland: #EDDDC9;         // Lch(89,12,80) (Also used for farm)
@farmland-line: #C8B69E;    // Lch(75,15,80)

@farmyard: #EFD6B5;         // Lch(87,20,80)
@farmyard-line: #D1B48C;    // Lch(75,25,80)

// --- Other ----

@aerodrome: #ccc;
@allotments: #e5c7ab;
@apron: #e9d1ff;
@attraction: #f2caea;
@barracks: #ff8f8f;
@campsite: #ccff99; // also caravan_site, picnic_site
@cemetery: #aacbaf; // also grave_yard
@construction: #9d9d6c;
@danger_area: pink;
@desert: #e3b57a;
@field: #660;
@garages: #996;
@heath: #d6d99f;
@parking: #f7efb7;
@playground: #ccfff1;
@power: #bbb;
@rest_area: #efc8c8; // also services
@sand: #ffdf88;
@school: #f0f0d8; // also university, college, hospital, kindergarten

#landcover {
 [feature = 'leisure_swimming_pool'][zoom >= 14] {
    polygon-fill: @water-color;
    line-color: saturate(darken(@water-color, 40%), 30%);
    line-width: 0.5;
  }

  [feature = 'leisure_playground'][zoom >= 13] {
    polygon-fill: @playground;
    line-color: saturate(darken(@playground, 60%), 30%);
    line-width: 0.3;
  }

  [feature = 'tourism_camp_site'],
  [feature = 'tourism_caravan_site'],
  [feature = 'tourism_picnic_site'] {
    [zoom >= 13] {
      polygon-fill: @campsite;
      polygon-opacity: 0.5;
      line-color: saturate(darken(@campsite, 60%), 30%);
      line-width: 0.3;
    }
  }

  [feature = 'tourism_attraction'][zoom >= 10] {
    polygon-fill: @attraction;
  }

  [feature = 'landuse_quarry'][zoom >= 11] {
    polygon-pattern-file: url('symbols/quarry2.png');
    line-width: 0.5;
    line-color: grey;
  }

  [feature = 'landuse_vineyard'] {
    [zoom >= 10][zoom < 13] {
      polygon-fill: @vineyard;
    }
    [zoom >= 13] {
      polygon-pattern-file: url('symbols/vineyard.png');
    }
  }

  [feature = 'landuse_orchard'][zoom >= 10] {
    polygon-pattern-file: url('symbols/orchard.png');
  }

  [feature = 'landuse_cemetery'],
  [feature = 'amenity_grave_yard'] {
    [zoom >= 10][zoom < 14] {
      polygon-fill: @cemetery;
    }
    [zoom >= 14] {
      [religion = 'jewish'] { polygon-pattern-file: url('symbols/cemetery_jewish.18.png'); }
      [religion = 'christian'] { polygon-pattern-file: url('symbols/grave_yard.png'); }
      [religion = 'INT-generic'] { polygon-pattern-file: url('symbols/grave_yard_generic.png'); }
    }
  }

  [feature = 'landuse_residential'][zoom >= 10] {
    polygon-fill: @residential;
    [zoom >= 16] {
      line-width: .5;
      line-color: @residential-line;
      [name != ''] {
        line-width: 0.7;
      }

    }
  }

  [feature = 'landuse_garages'][zoom >= 12] {
    polygon-fill: @garages;
    polygon-opacity: 0.2;
  }

  [feature = 'military_barracks'][zoom >= 10] {
    polygon-fill: @barracks;
  }

  [feature = 'landuse_field'] {
    [zoom >= 10] {
      polygon-fill: @field;
      polygon-opacity: 0.2;
      [zoom >= 14] {
        line-width: 0.3;
        line-opacity: 0.4;
        line-color: saturate(darken(@field, 40%), 20%);
      }
    }
  }

  [feature = 'military_danger_area'] {
    [zoom >= 9][zoom < 11] {
      polygon-fill: @danger_area;
      polygon-opacity: 0.3;
    }
    [zoom >= 11] {
      polygon-pattern-file: url('symbols/danger.png');
    }
  }

  [feature = 'landuse_meadow'],
  [feature = 'landuse_grass'] {
    [zoom >= 10] {
      polygon-fill: @grass;
    }
  }

  [feature = 'leisure_park'],
  [feature = 'leisure_recreation_ground'] {
    [zoom >= 10] {
      polygon-fill: @park;
      polygon-opacity: 0.6;
    }
  }

  [feature = 'tourism_zoo'][zoom >= 10] {
    polygon-pattern-file: url('symbols/zoo.png');
  }

  [feature = 'leisure_common'][zoom >= 10] {
    polygon-fill: @grass;
  }

  [feature = 'leisure_garden'][zoom >= 10] {
    polygon-fill: @grass;
  }

  [feature = 'leisure_golf_course'][zoom >= 10] {
    polygon-fill: @golf_course;
  }

  [feature = 'landuse_allotments'] {
    [zoom >= 10][zoom < 14] {
      polygon-fill: @allotments;
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/allotments.png');
    }
  }

  [feature = 'landuse_forest'] {
    [zoom >= 8] {
      polygon-fill: @forest;
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/forest.png');
    }
  }

  [feature = 'landuse_farmyard'][zoom >= 9] {
    polygon-fill: @farmyard;
      [zoom >= 16] {
        line-width: 0.5;
        line-color: @farmyard-line;
        [name != ''] {
          line-width: 0.7;
        }
      }
  }

  [feature = 'landuse_farm'],
  [feature = 'landuse_farmland'] {
    [zoom >= 9] {
      polygon-fill: @farmland;
      [zoom >= 16] {
        line-width: .5;
        line-color: @farmland-line;
      }
    }
  }

  [feature = 'landuse_recreation_ground'],
  [feature = 'landuse_conservation'] {
    [zoom >= 10] {
      polygon-fill: @grass;
    }
  }

  [feature = 'landuse_village_green'][zoom >= 11] {
    polygon-fill: @grass;
  }

  [feature = 'landuse_retail'][zoom >= 10] {
    polygon-fill: @retail;
    [zoom >= 16] {
      line-width: 0.5;
      line-color: @retail-line;
      [name != ''] {
        line-width: 0.7;
      }
    }
  }

  [feature = 'landuse_industrial'][zoom >= 10] {
    polygon-fill: @industrial;
    [zoom >= 16] {
      line-width: .5;
      line-color: @industrial-line;
      [name != ''] {
        line-width: 0.7;
      }
    }
  }

  [feature = 'landuse_railway'][zoom >= 10] {
    polygon-fill: @railway;
    [zoom >= 16][name != ''] {
      line-width: 0.7;
      line-color: @railway-line;
    }
  }

  [feature = 'power_station'][zoom >= 10],
  [feature = 'power_generator'][zoom >= 10],
  [feature = 'power_sub_station'][zoom >= 13],
  [feature = 'power_substation'][zoom >= 13] {
      polygon-fill: @power;
      [zoom >= 12] {
        line-width: 0.4;
        line-color: darken(@power, 40%);
      }
  }

  [feature = 'landuse_commercial'][zoom >= 10] {
    polygon-fill: @commercial;
    [zoom >= 16] {
      line-width: 0.5;
      line-color: @commercial-line;
      [name != ''] {
        line-width: 0.7;
      }

    }
  }

  [feature = 'landuse_brownfield'],
  [feature = 'landuse_landfill'],
  [feature = 'landuse_construction'] {
    [zoom >= 10] {
      polygon-fill: @construction;
      polygon-opacity: 0.7;
    }
  }

  [feature = 'natural_wood'] {
    [zoom >= 8] {
      polygon-fill: @wood;
    }
  }

  [feature = 'natural_desert'][zoom >= 8] {
    polygon-fill: @desert;
  }

  [feature = 'natural_sand'][zoom >= 10] {
    polygon-fill: @sand;
  }

  [feature = 'natural_heath'][zoom >= 10] {
    polygon-fill: @heath;
  }

  [feature = 'natural_grassland'][zoom >= 10] {
    polygon-fill: #c6e4b4;
  }

  [feature = 'natural_scrub'] {
    [zoom >= 10][zoom < 14] {
      polygon-fill: #b5e3b5;
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/scrub.png');
    }
  }

  [feature = 'amenity_university'],
  [feature = 'amenity_college'],
  [feature = 'amenity_school'],
  [feature = 'amenity_hospital'],
  [feature = 'amenity_kindergarten'] {
    [zoom >= 10] {
      polygon-fill: @school;
      [zoom >= 12] {
        line-width: 0.3;
        line-color: brown;
      }
    }
  }

  [feature = 'amenity_parking'][zoom >= 10] {
    polygon-fill: @parking;
    [zoom >= 15] {
      line-width: 0.3;
      line-color: saturate(darken(@parking, 40%), 20%);
    }
  }

  [feature = 'aeroway_apron'][zoom >= 12] {
    polygon-fill: @apron;
  }

  [feature = 'aeroway_aerodrome'][zoom >= 12] {
    polygon-fill: @aerodrome;
    polygon-opacity: 0.2;
    line-width: 0.2;
    line-color: saturate(darken(@aerodrome, 40%), 20%);
  }

  [feature = 'natural_beach'][zoom >= 13] {
    polygon-pattern-file: url('symbols/beach.png');
  }

  [feature = 'highway_services'],
  [feature = 'highway_rest_area'] {
    [zoom >= 14] {
      polygon-fill: @rest_area;
    }
  }

  [feature = 'leisure_sports_centre'],
  [feature = 'leisure_stadium'] {
    [zoom >= 10] {
      polygon-fill: @stadium;
    }
  }

  [feature = 'leisure_track'][zoom >= 10] {
    polygon-fill: @track;
    [zoom >= 15] {
      line-width: 0.5;
      line-color: saturate(darken(@track, 40%), 20%);
    }
  }

  [feature = 'leisure_pitch'][zoom >= 10] {
    polygon-fill: @pitch;
    [zoom >= 15] {
      line-width: 0.5;
      line-color: saturate(darken(@pitch, 40%), 20%);
    }
  }
}

/* man_made=cutline */
#landcover_line {
  [zoom >= 14] {
    line-width: 3;
    line-join: round;
    line-cap: square;
    line-color: @land-color;
    [zoom >= 16] {
      line-width: 6;
    }
  }
}

#landuse_overlay {
  [landuse = 'military'][zoom >= 10]::landuse {
    polygon-pattern-file: url('symbols/military_red_hatch.png');
    polygon-pattern-alignment: global;
    line-color: #f55;
    line-width: 3;
    line-opacity: 0.329;
  }
}

#cliffs {
  [natural = 'cliff'][zoom >= 13] {
    line-pattern-file: url('symbols/cliff.png');
    [zoom >= 15] {
      line-pattern-file: url('symbols/cliff2.png');
    }
  }
  [man_made = 'embankment'][zoom >= 15]::man_made {
    line-pattern-file: url('symbols/cliff.png');
  }
}

#area_barriers {
  [zoom >= 16] {
    line-color: #444;
    line-width: 0.4;
    [barrier = 'hedge'] {
      polygon-fill: #aed1a0;
    }
  }
}

#barriers {
  [zoom >= 16] {
    line-width: 0.4;
    line-color: #444;
  }
  [barrier = 'embankment'][zoom >= 14] {
    line-width: 0.4;
    line-color: #444;
  }
  [barrier = 'hedge'][zoom >= 16] {
    line-width: 3;
    line-color: #aed1a0;
  }
}

#tree_row {
  [natural = 'tree_row'][zoom >= 16] {
    line-pattern-file: url('symbols/tree_row.png');
    [zoom >= 17] {
      line-pattern-file: url('symbols/tree_row2.png');
    }
  }
}

#theme_park {
  [tourism = 'theme_park'][zoom >= 13] {
    line-color: #734a08;
    line-width: 1.5;
    line-dasharray: 9,3;
    line-opacity: 0.6;
    [zoom >= 15] {
      line-width: 2.5;
    }
  }
}

// WATER.MSS //

@water-text: #6699cc;

#water_areas {
  [natural = 'glacier']::natural {
    [zoom >= 6] {
      line-dasharray: 4,2;
      line-width: 1.5;
      line-color: #9cf;
      polygon-pattern-file: url('symbols/glacier.png');
      [zoom >= 8] {
        polygon-pattern-file: url('symbols/glacier2.png');
      }
    }
  }

  [waterway = 'dock'],
  [waterway = 'mill_pond'],
  [waterway = 'canal'] {
    [zoom >= 9]::waterway {
      polygon-gamma: 0.75;
      polygon-fill: @water-color;
    }
  }

  [landuse = 'basin'][zoom >= 7]::landuse {
    polygon-gamma: 0.75;
    polygon-fill: @water-color;
  }

  [natural = 'lake']::natural,
  [natural = 'water']::natural,
  [landuse = 'reservoir']::landuse,
  [waterway = 'riverbank']::waterway,
  [landuse = 'water']::water {
    [zoom >= 6] {
      polygon-fill: @water-color;
      polygon-gamma: 0.75;
    }
  }

  [natural = 'mud'][zoom >= 13]::natural {
    polygon-pattern-file: url('symbols/mud.png');
  }
}

#water_areas_overlay {
  [natural = 'marsh'],
  [natural = 'wetland'] {
    [zoom >= 13] {
      polygon-pattern-file: url('symbols/marsh.png');
    }
  }
}

#glaciers_text {
  [way_area >= 10000000][zoom >= 10],
  [way_area >= 5000000][way_area < 10000000][zoom >= 11],
  [way_area < 5000000][zoom >= 12] {
    text-name: "[name]";
    text-size: 10;
    text-fill: #77f;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1.5;
    text-wrap-width: 20;
  }
}

#water_lines_casing {
  [waterway='stream'],
  [waterway='ditch'],
  [waterway='drain'] {
    [int_tunnel = 'no'] {
      [zoom >= 13] {
        line-width: 1.5;
        line-color: white;
        [waterway='stream'][zoom >= 15] {
          line-width: 2.5;
        }
      }
    }
  }
}

#water_lines_low-zoom {
  [waterway = 'river'][zoom >= 8][zoom < 12] {
    line-color: @water-color;
    line-width: 0.7;
    [zoom >= 9] { line-width: 1.2; }
    [zoom >= 10] { line-width: 1.6; }
  }
}

#water_lines {
  [waterway = 'weir'][zoom >= 15] {
    line-color: #aaa;
    line-width: 2;
    line-join: round;
    line-cap: round;
  }

  [waterway = 'wadi'][zoom >= 13] {
    line-color: @water-color;
    line-width: 1;
    line-dasharray: 4,4;
    line-cap: round;
    line-join: round;
    [zoom >= 16] { line-width: 2; }
  }

  [waterway = 'canal'][zoom >= 12],
  [waterway = 'river'][zoom >= 12] {
    line-color: @water-color;
    line-width: 2;
    [zoom >= 13] { line-width: 3; }
    [zoom >= 14] { line-width: 5; }
    [zoom >= 15] { line-width: 6; }
    [zoom >= 17] { line-width: 10; }
    [zoom >= 18] { line-width: 12; }
    line-cap: round;
    line-join: round;
    [int_tunnel = 'yes'] {
      line-dasharray: 4,2;
      line-cap: butt;
      line-join: miter;
      a/line-color: #f3f7f7;
      a/line-width: 1;
      [zoom >= 14] { a/line-width: 2; }
      [zoom >= 15] { a/line-width: 3; }
      [zoom >= 17] { a/line-width: 7; }
      [zoom >= 18] { a/line-width: 8; }
    }
  }

  [waterway = 'stream'],
  [waterway = 'ditch'],
  [waterway = 'drain'] {
    [zoom >= 13] {
      line-width: 1;
      line-color: @water-color;
      [waterway = 'stream'][zoom >= 15] {
        line-width: 2;
      }
      [int_tunnel = 'yes'][zoom >= 15] {
        line-width: 2.5;
        [waterway = 'stream'] { line-width: 3.5; }
        line-dasharray: 4,2;
        a/line-width: 1;
        [waterway = 'stream'] { a/line-width: 2; }
        a/line-color: #f3f7f7;
      }
    }
  }

  [waterway = 'derelict_canal'][zoom >= 12] {
    line-width: 1.5;
    line-color: #b5e4d0;
    line-dasharray: 4,4;
    line-opacity: 0.5;
    line-join: round;
    line-cap: round;
    [zoom >= 13] {
      line-width: 2.5;
      line-dasharray: 4,6;
    }
    [zoom >= 14] {
      line-width: 4.5;
      line-dasharray: 4,8;
    }
  }
}

#waterway_bridges {
  [zoom >= 14] {
    line-width: 7;
    line-color: #000;
    line-join: round;
    b/line-width: 6;
    b/line-color: @water-color;
    b/line-cap: round;
    b/line-join: round;
    [zoom >= 17] {
      line-width: 11;
      b/line-width: 10;
    }
  }
}

#water_lines-text {
  [waterway = 'river'][zoom >= 13] {
    text-name: "[name]";
    text-face-name: @oblique-fonts;
    text-placement: line;
    text-fill: @water-text;
    text-spacing: 400;
    text-size: 10;
    text-halo-radius: 1;
    [zoom >= 14] { text-size: 12; }
    [int_tunnel = 'yes'] { text-min-distance: 200; }
  }

  [waterway = 'canal'][zoom >= 13][zoom < 14] {
    text-name: "[name]";
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    text-size: 10;
    text-placement: line;
    text-fill: @water-text;
  }

  [waterway = 'stream'][zoom >= 15] {
    text-name: "[name]";
    text-size: 10;
    text-face-name: @oblique-fonts;
    text-fill: @water-text;
    text-halo-radius: 1;
    text-spacing: 600;
    text-placement: line;
    text-dy: 8;
  }

  [waterway = 'drain'],
  [waterway = 'ditch'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-face-name: @oblique-fonts;
      text-size: 10;
      text-fill: @water-text;
      text-spacing: 600;
      text-placement: line;
      text-halo-radius: 1;
    }
  }

  [waterway = 'canal'][zoom >= 14] {
    text-name: "[name]";
    text-size: 10;
    text-fill: @water-text;
    text-placement: line;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    [lock = 'yes'][zoom >= 17] {
      text-placement: point;
      text-wrap-width: 20;
    }
  }

  [waterway = 'derelict_canal'][zoom >= 13] {
    text-name: "[name]";
    text-size: 10;
    text-fill: #80d1ae;
    text-face-name: @oblique-fonts;
    text-placement: line;
    text-spacing: 600;
    text-halo-radius: 1;
    [zoom >= 14] {
      text-size: 12;
    }
  }
}

// WATER-FEATURES.MSS //

#dam {
  [zoom >= 13] {
    line-width: 2;
    line-color: #444;
    line-join: round;
    line-cap: round;
  }
  [zoom >= 15] {
    text-name: "[name]";
    text-halo-radius: 1;
    text-fill: #222;
    text-size: 8;
    text-face-name: @book-fonts;
  }
}

#marinas_area {
  [zoom >= 14] {
    a/line-width: 1;
    a/line-offset: -0.5;
    a/line-color: blue;
    a/line-opacity: 0.1;
    a/line-join: round;
    a/line-cap: round;
    b/line-width: 3;
    b/line-offset: -1.5;
    b/line-color: blue;
    b/line-opacity: 0.1;
    b/line-join: round;
    b/line-cap: round;
    [zoom >= 17] {
      a/line-width: 2;
      a/line-offset: -1;
      b/line-width: 6;
      b/line-offset: -3;
    }
  }
}

#piers_area {
  [zoom >= 12] {
    polygon-fill: @land-color;
  }
}

#piers {
  [man_made = 'breakwater'],
  [man_made = 'groyne'] {
    [zoom >= 12] {
      line-width: 1;
      line-color: #aaa;
    }
    [zoom >= 13] {
      line-width: 2;
    }
    [zoom >= 16] {
      line-width: 4;
    }
  }
  [man_made = 'pier'][zoom >= 12] {
    line-width: 1.5;
    line-color: @land-color;
    [zoom >= 13] { line-width: 3; }
    [zoom >= 16] { line-width: 7; }
  }
}

#locks {
  [waterway = 'lock_gate'][zoom >= 17] {
    point-file: url('symbols/lock_gate.png');
  }
}


// ROADS.MSS //

/* For the main linear features, such as roads and railways. */

@motorway-fill: #89a4cb;
@trunk-fill: #94d494;
@trunk-fill-alternative: #97d397;
@primary-fill: #dd9f9f;
@secondary-fill: #f9d6aa;
@tertiary-fill: #f8f8ba;
@residential-fill: #ffffff;
@service-fill: #ffffff;
@living-street-fill: #ccc;
@pedestrian-fill: #ededed;
@road-fill: #ddd;
@path-fill: black;
@footway-fill: salmon;
@steps-fill: @footway-fill;
@cycleway-fill: blue;
@bridleway-fill: green;
@track-fill: #996600;
@aeroway-fill: #bbc;
@runway-fill: @aeroway-fill;
@taxiway-fill: @aeroway-fill;
@helipad-fill: @aeroway-fill;

@default-casing: white;
@motorway-casing: #7788a1;
@trunk-casing: #7eae7e;
@primary-casing: #c57b7e;
@secondary-casing: #cca16a;
@tertiary-casing: #c6c68a;
@residential-casing: #bbb;
@service-casing: #999;
@living-street-casing: @default-casing;
@living-street-tunnel-casing: #bbb;
@pedestrian-casing: grey;
@path-casing: @default-casing;
@footway-casing: @default-casing;
@steps-casing: @default-casing;
@cycleway-casing: @default-casing;
@bridleway-casing: @default-casing;
@track-casing: @default-casing;

@residential-construction: #aaa;
@service-construction: #aaa;

@destination-marking: #c2e0ff;
@private-marking: #efa9a9;

@tunnel-casing: grey;
@bridge-casing: black;

@motorway-tunnel-fill: lighten(@motorway-fill, 25%);
@trunk-tunnel-fill: lighten(@trunk-fill, 10%);
@primary-tunnel-fill: lighten(@primary-fill, 10%);
@secondary-tunnel-fill: lighten(@secondary-fill, 5%);
@tertiary-tunnel-fill: lighten(@tertiary-fill, 5%);
@residential-tunnel-fill: darken(@residential-fill, 5%);
@living-street-tunnel-fill: lighten(@living-street-fill, 10%);

@motorway-width-z12:              3.5;
@motorway-link-width-z12:         1.5;
@trunk-width-z12:                 3.5;
@primary-width-z12:               3.5;
@secondary-width-z12:             3;

@motorway-width-z13:              7;
@motorway-link-width-z13:         4.5;
@trunk-width-z13:                 7;
@primary-width-z13:               7;
@secondary-width-z13:             7;
@tertiary-width-z13:              5;
@residential-width-z13:           3;
@bridleway-width-z13:             0.3;
@footway-width-z13:               0.7;
@cycleway-width-z13:              0.7;
@path-width-z13:                  0.2;
@track-width-z13:                 0.5;
@track-grade1-width-z13:          0.5;
@track-grade2-width-z13:          0.5;
@steps-width-z13:                 0.7;

@tertiary-width-z14:              7.5;
@residential-width-z14:           4.5;
@service-width-z14:               2.5;

@motorway-width-z15:             12.8;
@motorway-link-width-z15:         7.8;
@trunk-width-z15:                12.8;
@primary-width-z15:              12.8;
@secondary-width-z15:            12.8;
@tertiary-width-z15:             11.2;
@residential-width-z15:           8.3;
@bridleway-width-z15:             1.2;
@footway-width-z15:               1.5;
@cycleway-width-z15:              1.2;
@path-width-z15:                  0.5;
@track-width-z15:                 1.5;
@track-grade1-width-z15:          0.75;
@track-grade2-width-z15:          0.75;
@steps-width-z15:                 4;

@residential-width-z16:          11.2;
@service-width-z16:               6;
@minor-service-width-z16:         4;

@motorway-width-z17:             18;
@motorway-link-width-z17:        11.5;
@trunk-width-z17:                18;
@primary-width-z17:              18;
@secondary-width-z17:            18;
@tertiary-width-z17:             15.5;
@residential-width-z17:          15.5;
@service-width-z17:               7;

@casing-width-z12:                0.5;
@casing-width-z13:                0.5;
@residential-casing-width-z13:    0.5;
@casing-width-z14:                0.5;
@casing-width-z15:                0.7;
@casing-width-z16:                0.7;
@casing-width-z17:                1;

@bridge-casing-width-z12:         0.5;
@bridge-casing-width-z13:         0.5;
@bridge-casing-width-z14:         0.5;
@bridge-casing-width-z15:         0.75;
@bridge-casing-width-z16:         0.75;
@bridge-casing-width-z17:         0.75;

@paths-background-width:          1;
@paths-bridge-casing-width:       0.5;
@paths-tunnel-casing-width:       1;

#roads_casing, #bridges_casing, #tunnels_casing {
  ::casing_links {
    [feature = 'highway_raceway'] {
      [zoom >= 12] {
        line-color: pink;
        line-width: 1.2;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 13] { line-width: 4; }
      [zoom >= 15] { line-width: 7; }
    }

    [feature = 'highway_motorway_link'] {
      [zoom >= 12] {
        line-color: @motorway-casing;
        line-width: @motorway-link-width-z12;
        [zoom >= 13] { line-width: @motorway-link-width-z13; }
        [zoom >= 15] { line-width: @motorway-link-width-z15; }
        [zoom >= 17] { line-width: @motorway-link-width-z17; }
        #roads_casing {
          line-join: round;
        }
        #tunnels_casing {
          line-dasharray: 4,2;
        }
        #bridges_casing {
          line-join: round;
          [zoom >= 13] { line-color: @bridge-casing; }
        }
      }
    }

    [feature = 'highway_trunk_link'] {
      [zoom >= 12] {
        line-width: @trunk-width-z12;
        [zoom >= 13] { line-width: @trunk-width-z13; }
        [zoom >= 15] { line-width: @trunk-width-z15; }
        [zoom >= 17] { line-width: @trunk-width-z17; }
        line-color: @trunk-casing;
        #roads_casing {
          line-join: round;
          line-cap: round;
        }
        #tunnels_casing {
          line-dasharray: 4,2;
        }
        #bridges_casing {
          line-join: round;
          [zoom >= 13] { line-color: @bridge-casing; }
        }
      }
    }

    [feature = 'highway_primary_link'] {
      [zoom >= 12] {
        line-color: @primary-casing;
        line-width: @primary-width-z12;
        [zoom >= 13] { line-width: @primary-width-z13; }
        [zoom >= 15] { line-width: @primary-width-z15; }
        [zoom >= 17] { line-width: @primary-width-z17; }
        #roads_casing {
          line-join: round;
          line-cap: round;
        }
        #tunnels_casing {
          line-dasharray: 4,2;
        }
        #bridges_casing {
          line-join: round;
          [zoom >= 13] { line-color: @bridge-casing; }
        }
      }
    }

    [feature = 'highway_secondary_link'] {
      [zoom >= 12] {
        line-color: @secondary-casing;
        line-width: @secondary-width-z12;
        [zoom >= 13] { line-width: @secondary-width-z13; }
        [zoom >= 15] { line-width: @secondary-width-z15; }
        [zoom >= 17] { line-width: @secondary-width-z17; }
        #roads_casing {
          line-cap: round;
          line-join: round;
        }
        #tunnels_casing {
          line-dasharray: 4,2;
        }
        #bridges_casing {
          [zoom >= 13] {
            line-color: @bridge-casing;
            line-join: round;
          }
        }
      }
    }

    [feature = 'highway_tertiary_link'] {
      [zoom >= 13] {
        line-color: @tertiary-casing;
        line-width: @tertiary-width-z13;
        [zoom >= 14] { line-width: @tertiary-width-z14; }
        [zoom >= 15] { line-width: @tertiary-width-z15; }
        [zoom >= 17] { line-width: @tertiary-width-z17; }
        #roads_casing {
          line-cap: round;
          line-join: round;
        }
        #tunnels_casing {
          line-dasharray: 4,2;
        }
        #bridges_casing {
          [zoom >= 14] {
            line-color: @bridge-casing;
            line-join: round;
          }
        }
      }
    }
  }

  ::casing {
    [zoom >= 12] {
      [feature = 'highway_motorway'] {
        line-width: @motorway-width-z12;
        [zoom >= 13] { line-width: @motorway-width-z13; }
        [zoom >= 15] { line-width: @motorway-width-z15; }
        [zoom >= 17] { line-width: @motorway-width-z17; }
        line-color: @motorway-casing;
        #roads_casing {
          line-join: round;
          line-cap: round;
        }
        #tunnels_casing {
          line-dasharray: 4,2;
        }
        #bridges_casing {
          line-join: round;
          [zoom >= 13] { line-color: @bridge-casing; }
        }
      }
    }

    [feature = 'highway_trunk'] {
      [zoom >= 12] {
        line-color: @trunk-casing;
        line-width: @trunk-width-z12;
        [zoom >= 13] { line-width: @trunk-width-z13; }
        [zoom >= 15] { line-width: @trunk-width-z15; }
        [zoom >= 17] { line-width: @trunk-width-z17; }
        #roads_casing {
          line-join: round;
          line-cap: round;
        }
        #tunnels_casing {
          line-dasharray: 4,2;
        }
        #bridges_casing {
          line-join: round;
          [zoom >= 13] { line-color: @bridge-casing; }
        }
      }
    }

    [feature = 'highway_primary'] {
      [zoom >= 12] {
        line-color: @primary-casing;
        line-width: @primary-width-z12;
        [zoom >= 13] { line-width: @primary-width-z13; }
        [zoom >= 15] { line-width: @primary-width-z15; }
        [zoom >= 17] { line-width: @primary-width-z17; }
        #roads_casing {
          line-join: round;
          line-cap: round;
        }
        #tunnels_casing {
          line-dasharray: 4,2;
        }
        #bridges_casing {
          line-join: round;
          [zoom >= 13] { line-color: @bridge-casing; }
        }
      }
    }

    [feature = 'highway_secondary'] {
      [zoom >= 12] {
        line-color: @secondary-casing;
        line-width: @secondary-width-z12;
        [zoom >= 13] { line-width: @secondary-width-z13; }
        [zoom >= 15] { line-width: @secondary-width-z15; }
        [zoom >= 17] { line-width: @secondary-width-z17; }
        #roads_casing {
          line-join: round;
          line-cap: round;
        }
        #tunnels_casing {
          line-dasharray: 4,2;
        }
        #bridges_casing {
          [zoom >= 13] {
            line-color: @bridge-casing;
            line-join: round;
          }
        }
      }
    }

    [feature = 'highway_tertiary'] {
      [zoom >= 13] {
        line-color: @tertiary-casing;
        line-width: @tertiary-width-z13;
        [zoom >= 14] { line-width: @tertiary-width-z14; }
        [zoom >= 15] { line-width: @tertiary-width-z15; }
        [zoom >= 17] { line-width: @tertiary-width-z17; }
        #roads_casing {
          line-join: round;
          line-cap: round;
        }
        #tunnels_casing {
          line-dasharray: 4,2;
        }
        #bridges_casing {
          [zoom >= 14] {
            line-color: @bridge-casing;
            line-join: round;
          }
        }
      }
    }

    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'],
    [feature = 'highway_road'] {
      [zoom >= 13] {
        line-color: @residential-casing;
        line-width: @residential-width-z13;
        [zoom >= 14] { line-width: @residential-width-z14; }
        [zoom >= 15] { line-width: @residential-width-z15; }
        [zoom >= 16] { line-width: @residential-width-z16; }
        [zoom >= 17] { line-width: @residential-width-z17; }
        #roads_casing {
          line-join: round;
          line-cap: round;
        }
        #tunnels_casing {
          line-dasharray: 4,2;
        }
        #bridges_casing {
          [zoom >= 14] {
            line-color: @bridge-casing;
            line-join: round;
          }
        }
      }
    }

    [feature = 'highway_service'] {
      [zoom >= 14][service = 'INT-normal'],
      [zoom >= 16][service = 'INT-minor'] {
        line-color: @service-casing;
        [service = 'INT-normal'] {
          line-width: @service-width-z14;
          [zoom >= 16] { line-width: @service-width-z16; }
          [zoom >= 17] { line-width: @service-width-z17; }
        }
        [service = 'INT-minor'] {
          line-width: @minor-service-width-z16;
        }
        #roads_casing {
          line-join: round;
          line-cap: round;
        }
        #tunnels_casing { line-dasharray: 4,2; }
        #bridges_casing {
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_pedestrian'] {
      [zoom >= 13] {
        line-join: round;
        #roads_casing, #tunnels_casing {
          line-width: 2;
          line-color: @pedestrian-casing;
          line-cap: round;
          [zoom >= 14] { line-width: 3.6; }
          [zoom >= 15] { line-width: 6.5; }
          [zoom >= 16] { line-width: 9; }
          #tunnels_casing {
            line-dasharray: 4,2;
          }
        }
        #bridges_casing {
          line-width: 2.2;
          line-color: @bridge-casing;
          [zoom >= 14] { line-width: 3.8; }
          [zoom >= 15] { line-width: 7; }
          [zoom >= 16] { line-width: 9.5; }
        }
      }
    }

    [feature = 'highway_living_street'] {
      [zoom >= 13] {
        line-width: 2.5;
        line-color: @living-street-casing;
        [zoom >= 14] { line-width: 4; }
        [zoom >= 15] { line-width: 6; }
        [zoom >= 16] { line-width: 9; }
        [zoom >= 17] { line-width: 14.5; }
        #roads_casing {
          line-cap: round;
          line-join: round;
        }
        #tunnels_casing {
          line-color: @living-street-tunnel-casing;
          line-dasharray: 4,2;
        }
        #bridges_casing {
          [zoom >= 14] {
            line-color: @bridge-casing;
            [zoom >= 15] { line-width: 6.2; }
            [zoom >= 16] { line-width: 8.9; }
            [zoom >= 17] { line-width: 15; }
          }
        }
      }
    }

    [feature = 'highway_steps'] {
      #bridges_casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @steps-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [zoom >= 15] { line-width: @steps-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_bridleway'],
    [feature = 'highway_path'][horse = 'designated'] {
      #bridges_casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @bridleway-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [zoom >= 15] { line-width: @bridleway-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_footway'],
    [feature = 'highway_path'][foot = 'designated'] {
      #bridges_casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @footway-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [zoom >= 15] { line-width: @footway-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_cycleway'],
    [feature = 'highway_path'][bicycle = 'designated'] {
      #bridges_casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @cycleway-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [zoom >= 15] { line-width: @cycleway-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_path'] {
      #bridges_casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @path-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [zoom >= 15] { line-width: @path-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_track'] {
      #bridges_casing {
        [zoom >= 13][access != 'no'] {
          line-color: @bridge-casing;
          line-join: round;
          line-width: @track-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [tracktype = 'grade1'] {
            line-width: @track-grade1-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          }
          [tracktype = 'grade2'] {
            line-width: @track-grade2-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          }
        }
        [zoom >= 15] {
          line-width: @track-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [tracktype = 'grade1'] {
            line-width: @track-grade1-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          }
          [tracktype = 'grade2'] {
            line-width: @track-grade2-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          }
        }
      }
    }

    [feature = 'railway_subway'] {
      #bridges_casing {
        [zoom >= 14] {
          line-width: 5.5;
          line-color: black;
          line-join: round;
        }
      }
    }

    [feature = 'railway_light_rail'],
    [feature = 'railway_funicular'],
    [feature = 'railway_narrow_gauge'] {
      #bridges_casing {
        [zoom >= 14] {
          line-width: 5.5;
          line-color: black;
          line-join: round;
        }
      }
    }

    [feature = 'railway_rail'],
    [feature = 'railway_preserved'],
    [feature = 'railway_monorail'][zoom >= 14] {
      #bridges_casing {
        [zoom >= 13] {
          line-width: 6.5;
          line-color: black;
          line-join: round;
        }
      }
    }

    [feature = 'railway_INT-spur-siding-yard'] {
      #bridges_casing {
        [zoom >= 13] {
          line-width: 5.7;
          line-color: black;
          line-join: round;
        }
      }
    }

    [feature = 'railway_disused'],
    [feature = 'railway_construction'],
    [feature = 'railway_miniature'][zoom >= 15],
    [feature = 'railway_INT-preserved-ssy'][zoom >= 14] {
      #bridges_casing {
        [zoom >= 13] {
          line-width: 6;
          line-color: black;
          line-join: round;
        }
      }
    }

    [feature = 'aeroway_runway'] {
      #bridges_casing {
        [zoom >= 14] {
          line-width: 19;
          line-color: black;
          line-join: round;
        }
      }
    }

    [feature = 'aeroway_taxiway'] {
      #bridges_casing {
        [zoom >= 14] {
          line-width: 5;
          line-color: black;
          line-join: round;
          [zoom >= 15] { line-width: 7; }
        }
      } 
    }
  }

  ::bridges_background {
    [feature = 'highway_bridleway'],
    [feature = 'highway_path'][horse = 'designated'] {
      #bridges_casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @bridleway-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @bridleway-width-z15 + 2 * @paths-background-width; }
          line-color: @bridleway-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_footway'],
    [feature = 'highway_path'][foot = 'designated'] {
      #bridges_casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @footway-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @footway-width-z15 + 2 * @paths-background-width; }
          line-color: @footway-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_cycleway'],
    [feature = 'highway_path'][bicycle = 'designated'] {
      #bridges_casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @cycleway-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @cycleway-width-z15 + 2 * @paths-background-width; }
          line-color: @cycleway-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_steps'] {
      #bridges_casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @steps-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @steps-width-z15 + 2 * @paths-background-width; }
          line-color: @steps-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_path'] {
      #bridges_casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @path-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @path-width-z15 + 2 * @paths-background-width; }
          line-color: @path-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_track'] {
      /* We don't set opacity here, so it's 1.0. Aside from that, it's basically a copy of roads-fill::background in the track part of ::fill */
      #bridges_casing {
        [zoom >= 13][access != 'no'] {
          line-color: @track-casing;
          line-join: round;
          line-width: @track-width-z13 + 2 * @paths-background-width;
          [tracktype = 'grade1'] {
            line-width: @track-grade1-width-z13 + 2 * @paths-background-width;
          }
          [tracktype = 'grade2'] {
            line-width: @track-grade2-width-z13 + 2 * @paths-background-width;
          }
        }
        [zoom >= 15] {
          line-width: @track-width-z15 + 2 * @paths-background-width;
          [tracktype = 'grade1'] {
            line-width: @track-grade1-width-z15 + 2 * @paths-background-width;
          }
          [tracktype = 'grade2'] {
            line-width: @track-grade2-width-z15 + 2 * @paths-background-width;
          }
        }
      }
    }

    [feature = 'railway_rail'][zoom >= 13],
    [feature = 'railway_preserved'][zoom >= 14],
    [feature = 'railway_monorail'][zoom >= 14] {
      #bridges_casing {
        line-width: 5;
        line-color: white;
        line-join: round;
      }
    }

    [feature = 'railway_INT-spur-siding-yard'] {
      #bridges_casing {
        [zoom >= 13] {
          line-width: 4;
          line-color: white;
          line-join: round;
        }
      }
    }

    [feature = 'railway_disused'],
    [feature = 'railway_construction'],
    [feature = 'railway_miniature'][zoom >= 15],
    [feature = 'railway_INT-preserved-ssy'][zoom >= 14] {
      #bridges_casing {
        [zoom >= 13] {
          line-width: 4.5;
          line-color: white;
          line-join: round;
        }
      }
    }

    [feature = 'railway_subway'] {
      #bridges_casing {
        [zoom >= 14] {
          line-width: 4;
          line-color: white;
          line-join: round;
        }
      }
    }

    [feature = 'railway_light_rail'],
    [feature = 'railway_funicular'],
    [feature = 'railway_narrow_gauge'] {
      #bridges_casing {
        [zoom >= 14] {
          line-width: 4;
          line-color: white;
          line-join: round;
        }
      }
    }
  }
}

#roads_fill,#bridges_fill,#tunnels_fill {
  ::fill_links {
    [feature = 'highway_motorway_link'] {
      [zoom >= 12] {
        line-width: @motorway-link-width-z12 - 2 * @casing-width-z12;
        [zoom >= 13] { line-width: @motorway-link-width-z13 - 2 * @casing-width-z13; }
        [zoom >= 15] { line-width: @motorway-link-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 17] { line-width: @motorway-link-width-z17 - 2 * @casing-width-z17; }
        #roads_fill, #bridges_fill {
          line-color: @motorway-fill;
        }
        #tunnels_fill {
          line-color: @motorway-tunnel-fill;
        }
        #bridges_fill {
          line-width: @motorway-link-width-z12 - 2 * @bridge-casing-width-z12;
          [zoom >= 13] { line-width: @motorway-link-width-z13 - 2 * @bridge-casing-width-z13; }
          [zoom >= 15] { line-width: @motorway-link-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 17] { line-width: @motorway-link-width-z17 - 2 * @bridge-casing-width-z17; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_trunk_link'] {
      [zoom >= 12] {
        line-width: @trunk-width-z12 - 2 * @casing-width-z12;
        [zoom >= 13] { line-width: @trunk-width-z13 - 2 * @casing-width-z13; }
        [zoom >= 15] { line-width: @trunk-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 17] { line-width: @trunk-width-z17 - 2 * @casing-width-z17; }
        #roads_fill, #bridges_fill {
          line-color: @trunk-fill;
        }
        #tunnels_fill {
          line-color: @trunk-tunnel-fill;
        }
        #bridges_fill {
          line-width: @trunk-width-z12 - 2 * @bridge-casing-width-z12;
          [zoom >= 13] { line-width: @trunk-width-z13 - 2 * @bridge-casing-width-z13; }
          [zoom >= 15] { line-width: @trunk-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 17] { line-width: @trunk-width-z17 - 2 * @bridge-casing-width-z17; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_primary_link'] {
      [zoom >= 12] {
        line-width: @primary-width-z12 - 2 * @casing-width-z12;
        [zoom >= 13] { line-width: @primary-width-z13 - 2 * @casing-width-z13; }
        [zoom >= 15] { line-width: @primary-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 17] { line-width: @primary-width-z17 - 2 * @casing-width-z17; }
        #roads_fill, #bridges_fill {
          line-color: @primary-fill;
        }
        #tunnels_fill {
          line-color: @primary-tunnel-fill;
        }
        #bridges_fill {
          line-width: @primary-width-z12 - 2 * @bridge-casing-width-z12;
          [zoom >= 13] { line-width: @primary-width-z13 - 2 * @bridge-casing-width-z13; }
          [zoom >= 15] { line-width: @primary-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 17] { line-width: @primary-width-z17 - 2 * @bridge-casing-width-z17; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_secondary_link'] {
      [zoom >= 12] {
        line-width: @secondary-width-z12 - 2 * @casing-width-z12;
        [zoom >= 13] { line-width: @secondary-width-z13 - 2 * @casing-width-z13; }
        [zoom >= 15] { line-width: @secondary-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 17] { line-width: @secondary-width-z17 - 2 * @casing-width-z17; }
        #roads_fill, #bridges_fill {
          line-color: @secondary-fill;
        }
        #tunnels_fill {
          line-color: @secondary-tunnel-fill;
        }
        #bridges_fill {
          line-width: @secondary-width-z12 - 2 * @bridge-casing-width-z12;
          [zoom >= 13] { line-width: @secondary-width-z13 - 2 * @bridge-casing-width-z13; }
          [zoom >= 15] { line-width: @secondary-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 17] { line-width: @secondary-width-z17 - 2 * @bridge-casing-width-z17; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_tertiary_link'] {
      [zoom >= 13] {
        line-width: @tertiary-width-z13 - 2 * @casing-width-z13;
        [zoom >= 14] { line-width: @tertiary-width-z14 - 2 * @casing-width-z14; }
        [zoom >= 15] { line-width: @tertiary-width-z15 - 2 * @tertiary-width-z15; }
        [zoom >= 17] { line-width: @tertiary-width-z17 - 2 * @tertiary-width-z17; }
        #roads_fill, #bridges_fill {
          line-color: @tertiary-fill;
        }
        #tunnels_fill {
          line-color: @tertiary-tunnel-fill;
        }
        #bridges_fill {
          line-width: @tertiary-width-z13 - 2 * @bridge-casing-width-z13;
          [zoom >= 14] { line-width: @tertiary-width-z14 - 2 * @bridge-casing-width-z14; }
          [zoom >= 15] { line-width: @tertiary-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 17] { line-width: @tertiary-width-z17 - 2 * @bridge-casing-width-z17; }
        }
        line-cap: round;
        line-join: round;
      }
    }
  }

  ::fill {

    /*
     * The construction rules for small roads are strange, since if construction is null its assumed that
     * it's a more major road. The line-width = 0 could be removed by playing with the query to set a construction
     * string for non-small roads.
     *
     * Also note that these rules are quite sensitive to re-ordering, since the instances end up swapping round
     * (and then the dashes appear below the fills). See
     * https://github.com/gravitystorm/openstreetmap-carto/issues/23
     * https://github.com/mapbox/carto/issues/235
     * https://github.com/mapbox/carto/issues/237
     */
    [feature = 'highway_proposed'],
    [feature = 'highway_construction'] {
      [zoom >= 12] {
        line-width: 2;
        line-color: #9cc;

        [construction = 'motorway'],
        [construction = 'motorway_link'] {
          line-color: @motorway-fill;
        }
        [construction = 'trunk'],
        [construction = 'trunk_link'] {
          line-color: @trunk-fill;
        }
        [construction = 'primary'],
        [construction = 'primary_link'] {
          line-color: @primary-fill;
        }
        [construction = 'secondary'],
        [construction = 'secondary_link'] {
          line-color: @secondary-fill;
        }
        [construction = 'tertiary'],
        [construction = 'tertiary_link'] {
          line-color: @tertiary-fill;
          [zoom < 13] {
            line-width: 0;
            b/line-width: 0;
          }
        }
        [construction = 'residential'],
        [construction = 'unclassified'],
        [construction = 'living_street'] {
          line-color: @residential-construction;
          [zoom < 13] {
            line-width: 0;
            b/line-width: 0;
          }
        }
        [construction = 'service'] {
          line-color: @service-construction;
          [zoom < 14] {
            line-width: 0;
            b/line-width: 0;
          }
        }
        b/line-width: 2;
        b/line-dasharray: 4,2;
        b/line-color: white;
        [zoom >= 13] {
          line-width: 4;
          b/line-width: 3.5;
          b/line-dasharray: 6,4;
        }
        [zoom >= 16] {
          line-width: 8;
          b/line-width: 7;
          b/line-dasharray: 8,6;
        }
        [construction = 'cycleway'] {
          [zoom < 14] {
            line-width: 0;
            b/line-width: 0;
          }
          line-color: white;
          line-width: 3;
          line-opacity: 0.4;
          b/line-width: 1.2;
          b/line-color: #69f;
          b/line-dasharray: 2,6;
        }
      }
    }

    [feature = 'highway_motorway'] {
      [zoom >= 12] {
        line-width: @motorway-width-z12 - 2 * @casing-width-z12;
        [zoom >= 13] { line-width: @motorway-width-z13 - 2 * @casing-width-z13; }
        [zoom >= 15] { line-width: @motorway-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 17] { line-width: @motorway-width-z17 - 2 * @casing-width-z17; }
        #roads_fill, #bridges_fill {
          line-color: @motorway-fill;
        }
        #tunnels_fill {
          line-color: @motorway-tunnel-fill;
        }
        #bridges_fill {
          line-width: @motorway-width-z12 - 2 * @bridge-casing-width-z12;
          [zoom >= 13] { line-width: @motorway-width-z13 - 2 * @bridge-casing-width-z13; }
          [zoom >= 15] { line-width: @motorway-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 17] { line-width: @motorway-width-z17 - 2 * @bridge-casing-width-z17; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_trunk'] {
      [zoom >= 12] {
        line-width: @trunk-width-z12 - 2 * @casing-width-z12;
        [zoom >= 13] { line-width: @trunk-width-z13 - 2 * @casing-width-z13; }
        [zoom >= 15] { line-width: @trunk-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 17] { line-width: @trunk-width-z17 - 2 * @casing-width-z17; }
        #roads_fill, #bridges_fill {
          line-color: @trunk-fill;
        }
        #tunnels_fill {
          line-color: @trunk-tunnel-fill;
        }
        #bridges_fill {
          line-width: @trunk-width-z12 - 2 * @bridge-casing-width-z12;
          [zoom >= 13] { line-width: @trunk-width-z13 - 2 * @bridge-casing-width-z13; }
          [zoom >= 15] { line-width: @trunk-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 17] { line-width: @trunk-width-z17 - 2 * @bridge-casing-width-z17; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_primary'] {
      [zoom >= 12] {
        line-width: @primary-width-z12 - 2 * @casing-width-z12;
        [zoom >= 13] { line-width: @primary-width-z13 - 2 * @casing-width-z13; }
        [zoom >= 15] { line-width: @primary-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 17] { line-width: @primary-width-z17 - 2 * @casing-width-z17; }
        #roads_fill, #bridges_fill {
          line-color: @primary-fill;
        }
        #tunnels_fill {
          line-color: @primary-tunnel-fill;
        }
        #bridges_fill {
          line-width: @primary-width-z12 - 2 * @bridge-casing-width-z12;
          [zoom >= 13] { line-width: @primary-width-z13 - 2 * @bridge-casing-width-z13; }
          [zoom >= 15] { line-width: @primary-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 17] { line-width: @primary-width-z17 - 2 * @bridge-casing-width-z17; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_secondary'] {
      [zoom >= 12] {
        line-width: @secondary-width-z12 - 2 * @casing-width-z12;
        [zoom >= 13] { line-width: @secondary-width-z13 - 2 * @casing-width-z13; }
        [zoom >= 15] { line-width: @secondary-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 17] { line-width: @secondary-width-z17 - 2 * @casing-width-z17; }
        #roads_fill, #bridges_fill {
          line-color: @secondary-fill;
        }
        #tunnels_fill {
          line-color: @secondary-tunnel-fill;
        }
        #bridges_fill {
          line-width: @secondary-width-z12 - 2 * @bridge-casing-width-z12;
          [zoom >= 13] { line-width: @secondary-width-z13 - 2 * @bridge-casing-width-z13; }
          [zoom >= 15] { line-width: @secondary-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 17] { line-width: @secondary-width-z17 - 2 * @bridge-casing-width-z17; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_tertiary'] {
      [zoom >= 13] {
        line-width: @tertiary-width-z13 - 2 * @casing-width-z13;
        [zoom >= 14] { line-width: @tertiary-width-z14 - 2 * @casing-width-z14; }
        [zoom >= 15] { line-width: @tertiary-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 17] { line-width: @tertiary-width-z17 - 2 * @casing-width-z17; }
        #roads_fill, #bridges_fill {
          line-color: @tertiary-fill;
        }
        #tunnels_fill {
          line-color: @tertiary-tunnel-fill;
        }
        #bridges_fill {
          line-width: @tertiary-width-z13 - 2 * @bridge-casing-width-z13;
          [zoom >= 14] { line-width: @tertiary-width-z14 - 2 * @bridge-casing-width-z14; }
          [zoom >= 15] { line-width: @tertiary-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 17] { line-width: @tertiary-width-z17 - 2 * @bridge-casing-width-z17; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'] {
      [zoom >= 13] {
        line-width: @residential-width-z13 - 2 * @residential-casing-width-z13;
        [zoom >= 14] { line-width: @residential-width-z14 - 2 * @casing-width-z14; }
        [zoom >= 15] { line-width: @residential-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 16] { line-width: @residential-width-z16 - 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: @residential-width-z17 - 2 * @casing-width-z17; }
        #roads_fill, #bridges_fill {
          line-color: @residential-fill;
        }
        #tunnels_fill {
          line-color: @residential-tunnel-fill;
        }
        #bridges_fill {
          line-width: @residential-width-z13 - 2 * @bridge-casing-width-z13;
          [zoom >= 14] { line-width: @residential-width-z14 - 2 * @bridge-casing-width-z14; }
          [zoom >= 15] { line-width: @residential-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 16] { line-width: @residential-width-z16 - 2 * @bridge-casing-width-z16; }
          [zoom >= 17] { line-width: @residential-width-z17 - 2 * @bridge-casing-width-z17; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_tertiary'][zoom >= 10][zoom < 13],
    [feature = 'highway_residential'][zoom >= 10][zoom < 13],
    [feature = 'highway_unclassified'][zoom >= 10][zoom < 13],
    [feature = 'highway_road'][zoom >= 10][zoom < 13],
    [feature = 'highway_living_street'][zoom >= 12][zoom < 13] {
      line-width: 1;
      line-color: @residential-casing;
    }

    [feature = 'highway_road'] {
      [zoom >= 13] {
        #roads_fill, #bridges_fill {
          line-color: @road-fill;
        }
        #tunnels_fill {
          line-color: @residential-tunnel-fill;
        }
        #roads_fill {
          line-width: 2;
          [zoom >= 14] { line-width: 3; }
          [zoom >= 15] { line-width: 6.5; }
          [zoom >= 16] { line-width: 9.4; }
          [zoom >= 17] { line-width: 13; }
        }
        #bridges_fill {
          line-width: 3.5;
          [zoom >= 14] { line-width: 7.5; }
          [zoom >= 15] { line-width: 9.5; }
          [zoom >= 17] { line-width: 14; }
        }
        #tunnels_fill {
          line-width: 2;
          [zoom >= 14] { line-width: 3.5; }
          [zoom >= 15] { line-width: 9.5; }
          [zoom >= 17] { line-width: 14; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_living_street'] {
      [zoom >= 13] {
        line-width: 1.5;
        line-color: @living-street-fill;
        line-join: round;
        line-cap: round;
        [zoom >= 14] { line-width: 3; }
        [zoom >= 15] { line-width: 4.7; }
        [zoom >= 16] { line-width: 7.4; }
        [zoom >= 17] { line-width: 13; }
      }
      #tunnels_fill {
        line-color: @living-street-tunnel-fill;
      }
    }

    [feature = 'highway_service'] {
      [zoom >= 13][service = 'INT-normal'] {
        line-width: 1;
        line-color: @residential-casing;
      }
      [zoom >= 14][service = 'INT-normal'],
      [zoom >= 16][service = 'INT-minor'] {
        line-color: @service-fill;
        [service = 'INT-normal'] {
          line-width: @service-width-z14 - 2 * @casing-width-z14;
          [zoom >= 16] { line-width: @service-width-z16 - 2 * @casing-width-z16; }
          [zoom >= 17] { line-width: @service-width-z17 - 2 * @casing-width-z17; }
        }
        [service = 'INT-minor'] {
          line-width: @minor-service-width-z16 - 2 * @casing-width-z16;
        }
        line-join: round;
        line-cap: round;
        #tunnels_fill {
          line-color: darken(white, 5%);
        }
        #bridges_fill {
          [service = 'INT-normal'] {
            line-width: @service-width-z14 - 2 * @bridge-casing-width-z14;
            [zoom >= 16] { line-width: @service-width-z16 - 2 * @bridge-casing-width-z16; }
            [zoom >= 17] { line-width: @service-width-z17 - 2 * @bridge-casing-width-z17; }
          }
          [service = 'INT-minor'] {
            line-width: @minor-service-width-z16 - 2 * @bridge-casing-width-z16;
          }
        }
      }
    }

    [feature = 'highway_pedestrian'] {
      [zoom >= 13] {
        line-color: @pedestrian-fill;
        line-width: 1.5;
        [zoom >= 14] { line-width: 3; }
        [zoom >= 15] { line-width: 5.5; }
        [zoom >= 16] { line-width: 8; }
        line-join: round;
        line-cap: round;
      }
    }

    [feature = 'highway_platform'] {
      [zoom >= 16] {
        line-join: round;
        line-width: 6;
        line-color: grey;
        line-cap: round;
        b/line-width: 4;
        b/line-color: #bbbbbb;
        b/line-cap: round;
        b/line-join: round;
      }
    }

    [feature = 'highway_steps'] {
      [zoom >= 13][access != 'no'],
      [zoom >= 15] {
        #tunnels_fill {
          tunnelcasing/line-width: @steps-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [zoom >= 15] { tunnelcasing/line-width: @steps-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          tunnelcasing/line-color: @tunnel-casing;
          tunnelcasing/line-dasharray: 4,2;
        }
        #roads_fill[zoom >= 15],
        #tunnels_fill[zoom >= 13] {
          background/line-color: @steps-casing;
          background/line-cap: round;
          background/line-join: round;
          background/line-width: @steps-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { background/line-width: @steps-width-z15 + 2 * @paths-background-width; }
          #roads_fill { background/line-opacity: 0.4; }
        }
        line/line-color: @steps-fill;
        line/line-dasharray: 1,3;
        [zoom >= 15] { line/line-width:  @steps-width-z15; }
        line/line-width: @steps-width-z13;
        [zoom >= 15] { line/line-width:  @steps-width-z15; }
      }
    }

    [feature = 'highway_bridleway'],
    [feature = 'highway_path'][horse = 'designated'] {
      [zoom >= 13][access != 'no'],
      [zoom >= 15] {
        #tunnels_fill {
          tunnelcasing/line-width: @bridleway-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [zoom >= 15] { tunnelcasing/line-width: @bridleway-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          tunnelcasing/line-color: @tunnel-casing;
          tunnelcasing/line-dasharray: 4,2;
        }
        #roads_fill[zoom >= 15],
        #tunnels_fill[zoom >= 13] {
          background/line-color: @bridleway-casing;
          background/line-cap: round;
          background/line-join: round;
          background/line-width: @bridleway-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { background/line-width: @bridleway-width-z15 + 2 * @paths-background-width; }
          #roads_fill { background/line-opacity: 0.4; }
        }
        line/line-color: @bridleway-fill;
        line/line-dasharray: 4,2;
        line/line-width: @bridleway-width-z13;
        [zoom >= 15] { line/line-width: @bridleway-width-z15; }
        #tunnels_fill {
          line/line-join: round;
          line/line-cap: round;
        }
      }
    }

    [feature = 'highway_footway'],
    [feature = 'highway_path'][foot = 'designated'] {
      [zoom >= 13][access != 'no'],
      [zoom >= 15] {
        #tunnels_fill {
          tunnelcasing/line-width: @footway-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [zoom >= 15] { tunnelcasing/line-width: @footway-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          tunnelcasing/line-color: @tunnel-casing;
          tunnelcasing/line-dasharray: 4,2;
        }
        #roads_fill[zoom >= 15],
        #tunnels_fill[zoom >= 13] {
          background/line-color: @footway-casing;
          background/line-cap: round;
          background/line-join: round;
          background/line-width: @footway-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { background/line-width: @footway-width-z15 + 2 * @paths-background-width; }
          #roads_fill { background/line-opacity: 0.4; }
        }
        line/line-color: @footway-fill;
        line/line-dasharray: 1,3;
        line/line-join: round;
        line/line-cap: round;
        line/line-width: @footway-width-z13;
        [zoom >= 15] { line/line-width:  @footway-width-z15; }
      }
    }

    [feature = 'highway_cycleway'],
    [feature = 'highway_path'][bicycle = 'designated'] {
      [zoom >= 13][access != 'no'],
      [zoom >= 15] {
        #tunnels_fill {
          tunnelcasing/line-width: @cycleway-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [zoom >= 15] { tunnelcasing/line-width: @cycleway-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          tunnelcasing/line-color: @tunnel-casing;
          tunnelcasing/line-dasharray: 4,2;
        }
        #roads_fill[zoom >= 15],
        #tunnels_fill[zoom >= 13] {
          background/line-color: @cycleway-casing;
          background/line-cap: round;
          background/line-join: round;
          background/line-width: @cycleway-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { background/line-width: @cycleway-width-z15 + 2 * @paths-background-width; }
          #roads_fill { background/line-opacity: 0.4; }
        }
        line/line-color: @cycleway-fill;
        line/line-dasharray: 1,3;
        line/line-join: round;
        line/line-cap: round;
        line/line-width: @cycleway-width-z13;
        [zoom >= 15] { line/line-width: @cycleway-width-z15; }
      }
    }

    /*
    * The above defininitions should override this when needed
    * given the specitivity precedence.
    */
    [feature = 'highway_path'] {
      [zoom >= 13][access != 'no'],
      [zoom >= 15] {
        #tunnels_fill {
          tunnelcasing/line-width: @path-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [zoom >= 15] { tunnelcasing/line-width: @path-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          tunnelcasing/line-color: @tunnel-casing;
          tunnelcasing/line-dasharray: 4,2;
        }
        #roads_fill[zoom >= 15],
        #tunnels_fill[zoom >= 13] {
          background/line-color: @path-casing;
          background/line-cap: round;
          background/line-join: round;
          background/line-width: @path-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { background/line-width: @path-width-z15 + 2 * @paths-background-width; }
          #roads_fill { background/line-opacity: 0.4; }
        }
        line/line-color: @path-fill;
        line/line-dasharray: 6,3;
        line/line-join: round;
        line/line-cap: round;
        line/line-width: @path-width-z13;
        [zoom >= 15] { line/line-width: @path-width-z15; }
      }
    }

    [feature = 'highway_track'] {
      [zoom >= 13][access != 'no'],
      [zoom >= 15] {
        #tunnels_fill {
          tunnelcasing/line-color: @tunnel-casing;
          tunnelcasing/line-dasharray: 4,2;
          tunnelcasing/line-width: @track-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [tracktype = 'grade1'] {
            tunnelcasing/line-width: @track-grade1-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          }
          [tracktype = 'grade2'] {
            tunnelcasing/line-width: @track-grade2-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          }
          [zoom >= 15]{
            tunnelcasing/line-width: @track-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
            [tracktype = 'grade1'] {
              tunnelcasing/line-width: @track-grade1-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
            }
            [tracktype = 'grade2'] {
              tunnelcasing/line-width: @track-grade2-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
            }
          }
        }

        /* The white casing that you mainly see against forests and other dark features */
        #roads_fill[zoom >= 15],
        #tunnels_fill[zoom >= 13] {
          background/line-opacity: 0.4;
          background/line-color: @track-casing;
          background/line-join: round;
          background/line-cap: round;
          background/line-width: @track-width-z13 + 2 * @paths-background-width;
          /* With the heavier dasharrays on grade1 and grade2 it helps to make the casing a bit larger */
          [tracktype = 'grade1'] {
            background/line-width: @track-grade1-width-z13 + 2 * @paths-background-width;
          }
          [tracktype = 'grade2'] {
            background/line-width: @track-grade2-width-z13 + 2 * @paths-background-width;
          }

          [zoom >= 15] {
            background/line-width: @track-width-z15 + 2 * @paths-background-width;
            [tracktype = 'grade1'] {
              background/line-width: @track-grade1-width-z15 + 2 * @paths-background-width;
            }
            [tracktype = 'grade2'] {
              background/line-width: @track-grade2-width-z15 + 2 * @paths-background-width;
            }
          }
        }

        /* Set the properties of the brown inside */
        line/line-color: @track-fill;
        line/line-dasharray: 5,4,2,4;
        line/line-cap: round;
        line/line-join: round;
        line/line-opacity: 0.8;
        line/line-clip:false;

        line/line-width: @track-width-z13;

        [tracktype = 'grade1'] {
          line/line-dasharray: 100,0;
        }
        [tracktype = 'grade2'] {
          line/line-dasharray: 8.8,3.2;
        }
        [tracktype = 'grade3'] {
          line/line-dasharray: 5.6,4.0;
        }
        [tracktype = 'grade4'] {
          line/line-dasharray: 3.2,4.8;
        }
        [tracktype = 'grade5'] {
          line/line-dasharray: 1.6,6.4;
        }

        [zoom >= 15] {
          line/line-width: @track-width-z15;
          [tracktype = 'grade1'] {
            line/line-dasharray: 100,0;
          }
          [tracktype = 'grade2'] {
            line/line-dasharray: 11,4;
          }
          [tracktype = 'grade3'] {
            line/line-dasharray: 7,5;
          }
          [tracktype = 'grade4'] {
            line/line-dasharray: 4,6;
          }
          [tracktype = 'grade5'] {
            line/line-dasharray: 2,8;
          }
        }
      }
    }

    [feature = 'railway_rail'],
    [feature = 'railway_INT-spur-siding-yard'] {
      [zoom >= 13] {
        #roads_fill, #bridges_fill {
          dark/line-color: #999999;
          [feature = 'railway_rail']                               { dark/line-width: 3; }
          [feature = 'railway_INT-spur-siding-yard']               { dark/line-width: 2; }
          [feature = 'railway_rail']                               { dark/line-join: round; }
          [feature = 'railway_INT-spur-siding-yard'] #bridges_fill { dark/line-join: round; }
          light/line-color: white;
          [feature = 'railway_rail']                               { light/line-width: 1; }
          [feature = 'railway_INT-spur-siding-yard']               { light/line-width: 0.8; }
          [feature = 'railway_rail']                               { light/line-dasharray: 8,12; }
          [feature = 'railway_INT-spur-siding-yard']               { light/line-dasharray: 0,8,11,1; }
          light/line-join: round;
          [feature = 'railway_rail'][zoom >= 14]                   { light/line-dasharray: 0,11,8,1; }
        }
        #tunnels_fill {
          a/line-width: 3;
          b/line-width: 3;
          c/line-width: 3;
          d/line-width: 3;
          e/line-width: 3;
          f/line-width: 3;
          g/line-width: 3;
          a/line-color: #ffffff;
          b/line-color: #fdfdfd;
          c/line-color: #ececec;
          d/line-color: #cacaca;
          e/line-color: #afafaf;
          f/line-color: #a1a1a1;
          g/line-color: #9b9b9b;
          a/line-dasharray: 1,9;
          b/line-dasharray: 0,1,1,8;
          c/line-dasharray: 0,2,1,7;
          d/line-dasharray: 0,3,1,6;
          e/line-dasharray: 0,4,1,5;
          f/line-dasharray: 0,5,1,4;
          g/line-dasharray: 0,6,1,3;
          a/line-join: round;
          b/line-join: round;
          c/line-join: round;
          d/line-join: round;
          e/line-join: round;
          f/line-join: round;
          g/line-join: round;
          [feature = 'railway_INT-spur-siding-yard'] {
            a/line-width: 2;
            b/line-width: 2;
            c/line-width: 2;
            d/line-width: 2;
            e/line-width: 2;
            f/line-width: 2;
            g/line-width: 2;
          }
        }
      }
    }

    [feature = 'railway_light_rail'],
    [feature = 'railway_funicular'],
    [feature = 'railway_narrow_gauge'] {
      [zoom >= 13] {
        line-width: 2;
        line-color: #666;
        #tunnels_fill {
          line-dasharray: 5,3;
        }
      }
    }

    [feature = 'railway_miniature'] {
      [zoom >= 15] {
        line/line-width: 1.2;
        line/line-color: #999;
        dashes/line-width: 3;
        dashes/line-color: #999;
        dashes/line-dasharray: 1,10;
      }
    }

    [feature = 'railway_tram'] {
      #tunnels_fill {
        [zoom >= 13] {
          line-width: 1;
          line-dasharray: 5,3;
          line-color: #444;
          [zoom >= 15] { line-width: 2; }
        }
      }
    }

    [feature = 'railway_subway'] {
      [zoom >= 12] {
        line-width: 2;
        line-color: #999;
        #tunnels_fill {
          line-dasharray: 5,3;
        }
      }
      #bridges_fill {
        [zoom >= 14] {
          line-width: 2;
          line-color: #999;
        }
      }
    }

    [feature = 'railway_preserved'] {
      [zoom >= 12] {
        dark/line-width: 1.5;
        dark/line-color: #aaa;
        dark/line-join: round;
        [zoom >= 13] {
          dark/line-width: 3;
          dark/line-color: #999999;
          light/line-width: 1;
          light/line-color: white;
          light/line-dasharray: 0,1,8,1;
          light/line-join: round;
        }
      }
    }

    [feature = 'railway_INT-preserved-ssy'] {
      [zoom >= 12] {
        dark/line-width: 1;
        dark/line-color: #aaa;
        dark/line-join: round;
        [zoom >= 13] {
          dark/line-width: 2;
          dark/line-color: #999999;
          light/line-width: 0.8;
          light/line-color: white;
          light/line-dasharray: 0,1,8,1;
          light/line-join: round;
        }
      }
    }

    [feature = 'railway_monorail'] {
      [zoom >= 14] {
        background/line-width: 4;
        background/line-color: #fff;
        background/line-opacity: 0.4;
        background/line-cap: round;
        background/line-join: round;
        line/line-width: 3;
        line/line-color: #777;
        line/line-dasharray: 2,3;
        line/line-cap: round;
        line/line-join: round;
      }
    }

    [feature = 'railway_disused'],
    [feature = 'railway_construction'] {
      [zoom >= 13] {
        line-color: grey;
        line-width: 2;
        line-dasharray: 2,4;
        line-join: round;
      }
    }

    [feature = 'railway_platform'] {
      [zoom >= 16] {
        line-join: round;
        line-width: 6;
        line-color: grey;
        line-cap: round;
        b/line-width: 4;
        b/line-color: #bbbbbb;
        b/line-cap: round;
        b/line-join: round;
      }
    }

    [feature = 'railway_turntable'] {
      [zoom >= 16] {
        line-width: 1.5;
        line-color: #999;
      }
    }

    [feature = 'aeroway_runway'] {
      [zoom >= 11][zoom < 14] {
        line-width: 2;
        line-color: @runway-fill;
        [zoom >= 12] { line-width: 4; }
        [zoom >= 13] { line-width: 7; }
      }
      [zoom >= 14] {
        line-width: 18;
        line-color: @runway-fill;
      }
    }

    [feature = 'aeroway_taxiway'] {
      [zoom >= 11][zoom < 14] {
        line-width: 1;
        line-color: @taxiway-fill;
      }
      [zoom >= 14] {
        line-width: 4;
        line-color: @taxiway-fill;
        [zoom >= 15] { line-width: 6; }
      }
    }
  }
}

#turning_circle_casing {
  [int_tc_type = 'tertiary'][zoom >= 15] {
    marker-fill: @tertiary-casing;
    marker-width: (@tertiary-width-z15 - 2 * @casing-width-z15) * 1.8 + 2 * @casing-width-z15;
    marker-height: (@tertiary-width-z15 - 2 * @casing-width-z15) * 1.8 + 2 * @casing-width-z15;
    [zoom >= 17] {
      marker-width: (@tertiary-width-z17 - 2 * @casing-width-z17) * 1.8 + 2 * @casing-width-z17;
      marker-height: (@tertiary-width-z17 - 2 * @casing-width-z17) * 1.8 + 2 * @casing-width-z17;
    }
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
  }

  [int_tc_type = 'residential'],
  [int_tc_type = 'unclassified'] {
    [zoom >= 15] {
      marker-fill: @residential-casing;
      marker-width: (@residential-width-z15 - 2 * @casing-width-z15) * 1.8 + 2 * @casing-width-z15;
      marker-height: (@residential-width-z15 - 2 * @casing-width-z15) * 1.8 + 2 * @casing-width-z15;
      [zoom >= 16] {
        marker-width: (@residential-width-z16 - 2 * @casing-width-z16) * 1.8 + 2 * @casing-width-z16;
        marker-height: (@residential-width-z16 - 2 * @casing-width-z16) * 1.8 + 2 * @casing-width-z16;
      }
      [zoom >= 17] {
        marker-width: (@residential-width-z17 - 2 * @casing-width-z17) * 1.8 + 2 * @casing-width-z17;
        marker-height: (@residential-width-z17 - 2 * @casing-width-z17) * 1.8 + 2 * @casing-width-z17;
      }
      marker-allow-overlap: true;
      marker-ignore-placement: true;
      marker-line-width: 0;
    }
  }

  [int_tc_type = 'living_street'][zoom >= 15] {
    marker-fill: @living-street-casing;
    marker-width: 14;
    marker-height: 14;
    [zoom >= 16] {
      marker-width: 18;
      marker-height: 18;
    }
    [zoom >= 17] {
      marker-width: 24;
      marker-height: 24;
    }
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
  }

  [int_tc_type = 'service'][zoom >= 16] {
    marker-fill: @service-casing;
    [int_tc_service = 'INT-normal'] {
      marker-width: 14;
      marker-height: 14;
      [zoom >= 17] {
        marker-width: 16;
        marker-height: 16;
      }
    }
    [int_tc_service = 'INT-minor'] {
      marker-width: 12;
      marker-height: 12;
    }
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
  }
}

#turning_circle_fill {
  [int_tc_type = 'tertiary'][zoom >= 15] {
    marker-fill: @tertiary-fill;
    marker-width: (@tertiary-width-z15 - 2 * @casing-width-z15) * 1.8;
    marker-height: (@tertiary-width-z15 - 2 * @casing-width-z15) * 1.8;
    [zoom >= 17] {
      marker-width: (@tertiary-width-z17 - 2 * @casing-width-z17) * 1.8;
      marker-height: (@tertiary-width-z17 - 2 * @casing-width-z17) * 1.8;
    }
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
  }

  [int_tc_type = 'residential'],
  [int_tc_type = 'unclassified'] {
    [zoom >= 15] {
      marker-fill: @residential-fill;
      marker-width: (@residential-width-z15 - 2 * @casing-width-z15) * 1.8;
      marker-height: (@residential-width-z15 - 2 * @casing-width-z15) * 1.8;
      [zoom >= 16] {
        marker-width: (@residential-width-z16 - 2 * @casing-width-z16) * 1.8;
        marker-height: (@residential-width-z16 - 2 * @casing-width-z16) * 1.8;
      }
      [zoom >= 17] {
        marker-width: (@residential-width-z17 - 2 * @casing-width-z17) * 1.8;
        marker-height: (@residential-width-z17 - 2 * @casing-width-z17) * 1.8;
      }
      marker-allow-overlap: true;
      marker-ignore-placement: true;
      marker-line-width: 0;
    }
  }

  [int_tc_type = 'living_street'][zoom >= 15] {
    marker-fill: @living-street-fill;
    marker-width: 12;
    marker-height: 12;
    [zoom >= 16] {
      marker-width: 16;
      marker-height: 16;
    }
    [zoom >= 17] {
      marker-width: 22;
      marker-height: 22;
    }
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
  }

  [int_tc_type = 'service'][zoom >= 16] {
    marker-fill: @service-fill;
    [int_tc_service = 'INT-normal'] {
      marker-width: 12;
      marker-height: 12;
      [zoom >= 17] {
        marker-width: 14;
        marker-height: 14;
      }
    }
    [int_tc_service = 'INT-minor'] {
      marker-width: 10;
      marker-height: 10;
    }
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
  }
}

#highway_area_casing {
  [feature = 'highway_residential'],
  [feature = 'highway_unclassified'] {
    [zoom >= 14] {
      line-color: #999;
      line-width: 1;
    }
  }

  [feature = 'highway_pedestrian'],
  [feature = 'highway_service'],
  [feature = 'highway_footway'],
  [feature = 'highway_cycleway'],
  [feature = 'highway_path'] {
    [zoom >= 14] {
      line-color: grey;
      line-width: 1;
    }
  }

  [feature = 'highway_track'][zoom >= 14] {
    line-color: @track-fill;
    line-width: 2;
  }

  [feature = 'highway_platform'],
  [feature = 'railway_platform'] {
    [zoom >= 16] {
      line-color: grey;
      line-width: 2;
      line-cap: round;
      line-join: round;
    }
  }
}

#highway_area_fill {
  [feature = 'highway_living_street'][zoom >= 14] {
    polygon-fill: #ccc;
  }

  [feature = 'highway_residential'],
  [feature = 'highway_unclassified'],
  [feature = 'highway_service'] {
    [zoom >= 14] {
      polygon-fill: #fff;
    }
  }

  [feature = 'highway_pedestrian'],
  [feature = 'highway_footway'],
  [feature = 'highway_cycleway'],
  [feature = 'highway_path'] {
    [zoom >= 14] {
      polygon-fill: #ededed;
    }
  }

  [feature = 'highway_track'][zoom >= 14] {
    polygon-fill: #dfcc66;
  }

  [feature = 'highway_platform'],
  [feature = 'railway_platform'] {
    [zoom >= 16] {
      polygon-fill: #bbbbbb;
      polygon-gamma: 0.65;
    }
  }

  [feature = 'aeroway_runway'][zoom >= 11] {
    polygon-fill: @runway-fill;
  }

  [feature = 'aeroway_taxiway'][zoom >= 13] {
    polygon-fill: @taxiway-fill;
  }

  [feature = 'aeroway_helipad'][zoom >= 16] {
    polygon-fill: @helipad-fill;
  }
}

#highway_junctions {
  [zoom >= 11] {
    ref/text-name: "[ref]";
    ref/text-size: 10;
    ref/text-fill: #6666ff;
    ref/text-min-distance: 2;
    ref/text-face-name: @oblique-fonts;
    ref/text-halo-radius: 1.5;
    [zoom >= 12] {
      name/text-name: "[name]";
      name/text-size: 9;
      name/text-fill: #6666ff;
      name/text-dy: -9;
      name/text-face-name: @oblique-fonts;
      name/text-halo-radius: 1;
      name/text-wrap-character: ";";
      name/text-wrap-width: 2;
      name/text-min-distance: 2;
    }
    [zoom >= 15] {
      ref/text-size: 12;
      name/text-size: 11;
      name/text-dy: -10;
    }
  }
}

#access::fill {
  [access = 'destination'] {
    [feature = 'highway_secondary'],
    [feature = 'highway_tertiary'],
    [feature = 'highway_unclassified'],
    [feature = 'highway_residential'],
    [feature = 'highway_road'],
    [feature = 'highway_living_street'] {
      [zoom >= 15] {
        access/line-width: 6;
        access/line-color: @destination-marking;
        access/line-dasharray: 6,8;
        access/line-cap: round;
        access/line-join: round;
        access/line-opacity: 0.5;
      }
    }
    [feature = 'highway_service'][service = 'INT-normal'][zoom >= 15],
    [feature = 'highway_service'][zoom >= 16] {
      access/line-width: 3;
      access/line-color: @destination-marking;
      access/line-dasharray: 6,8;
      access/line-cap: round;
      access/line-join: round;
      access/line-opacity: 0.5;
      [zoom >= 16] { access/line-width: 6; }
    }
  }
  [access = 'no'] {
    [feature = 'highway_motorway'],
    [feature = 'highway_motorway_link'],
    [feature = 'highway_trunk'],
    [feature = 'highway_trunk_link'],
    [feature = 'highway_primary'],
    [feature = 'highway_primary_link'],
    [feature = 'highway_secondary'],
    [feature = 'highway_secondary_link'],
    [feature = 'highway_tertiary'],
    [feature = 'highway_tertiary_link'],
    [feature = 'highway_unclassified'],
    [feature = 'highway_residential'],
    [feature = 'highway_road'],
    [feature = 'highway_living_street'],
    [feature = 'highway_track'],
    [feature = 'highway_path'],
    [feature = 'highway_footway'],
    [feature = 'highway_cycleway'],
    [feature = 'highway_bridleway'] {
      [zoom >= 15] {
        access/line-width: 6;
        access/line-color: @private-marking;
        access/line-dasharray: 6,8;
        access/line-opacity: 0.5;
        access/line-join: round;
        access/line-cap: round;
      }
    }
    [feature = 'highway_service'][service = 'INT-normal'][zoom >= 15],
    [feature = 'highway_service'][zoom >= 16] {
      access/line-width: 3;
      access/line-color: @private-marking;
      access/line-dasharray: 6,8;
      access/line-opacity: 0.5;
      access/line-join: round;
      access/line-cap: round;
      [zoom >= 16] { access/line-width: 6; }
    }
  }
}

#roads_low_zoom {
  [feature = 'highway_motorway'],
  [feature = 'highway_motorway_link'] {
    [zoom >= 5][zoom < 12] {
      line-width: 0.5;
      line-color: @motorway-fill;
      [zoom >= 7] { line-width: 1; }
      [zoom >= 9] { line-width: 1.4; }
      [zoom >= 10] { line-width: 2; }
      [zoom >= 11] { line-width: 2.5; }
    }
  }

  [feature = 'highway_trunk'],
  [feature = 'highway_trunk_link'] {
    [zoom >= 5][zoom < 12] {
      line-width: 0.4;
      line-color: @trunk-fill;
      [zoom >= 7] {
        line-width: 1;
        line-color: @trunk-fill-alternative;
      }
      [zoom >= 9] { line-width: 2; }
      [zoom >= 11] { line-width: 2.5; }
    }
  }

  [feature = 'highway_primary'],
  [feature = 'highway_primary_link'] {
    [zoom >= 7][zoom < 12] {
      line-width: 0.5;
      line-color: @primary-fill;
      [zoom >= 9] { line-width: 1.2; }
      [zoom >= 10] { line-width: 2; }
      [zoom >= 11] { line-width: 2.5; }
    }
  }

  [feature = 'highway_secondary'],
  [feature = 'highway_secondary_link'] {
    [zoom >= 9][zoom < 12] {
      line-width: 1;
      line-color: @secondary-fill;
      [zoom >= 11] { line-width: 2; }
    }
  }

  [feature = 'railway_rail'] {
    [zoom >= 6][zoom < 13] {
      line-width: 0.6;
      line-color: #aaa;
      [zoom >= 9] { line-width: 1; }
      [zoom >= 10] { line-width: 2; }
      #tunnels_casing {
        line-dasharray: 5,2;
      }
    }
  }

  [feature = 'railway_INT-spur-siding-yard'] {
    [zoom >= 11] {
      line-width: 1;
      line-color: #aaa;
      line-join: round;
    }
  }

  [feature = 'railway_tram'],
  [feature = 'railway_light_rail'],
  [feature = 'railway_funicular'],
  [feature = 'railway_narrow_gauge'] {
    [zoom >= 8][zoom < 13] {
      line-width: 1;
      line-color: #ccc;
      [zoom >= 10] { line-color: #aaa }
    }
  }
}

#trams {
  [railway = 'tram'][zoom >= 13] {
    line-color: #444;
    line-width: 1;
    [zoom >= 15] {
      line-width: 2;
      [bridge = 'yes'] {
        line-width: 5;
        line-color: black;
        b/line-width: 4;
        b/line-color: white;
        c/line-width: 2;
        c/line-color: #444;
      }
    }
  }
}

#guideways {
  [zoom >= 13] {
    line-width: 3;
    line-color: #6666ff;
    line-join: round;
    b/line-width: 1;
    b/line-color: white;
    b/line-dasharray: 8,12;
    b/line-join: round;
  }
  [zoom >= 14] {
    b/line-dasharray: 0,11,8,1;
  }
}

#roads_text_ref_low_zoom {
  [highway = 'motorway'][length < 12] {
    [zoom >= 10][zoom < 13] {
      shield-name: "[ref]";
      shield-size: 10;
      shield-fill: #fff;
      shield-placement: line;
      shield-file: url("symbols/shields/motorway_[length]x1.svg");
      shield-spacing: 750;
      shield-min-distance: 30;
      shield-face-name: @bold-fonts;
      shield-clip: false;
    }
  }

  [highway = 'trunk'][zoom >= 11][zoom < 13] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/shields/trunk_[length]x1.svg");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
    shield-clip: false;
  }

  [highway = 'primary'][zoom >= 11][zoom < 13] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/shields/primary_[length]x1.svg");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
    shield-clip: false;
  }

  [highway = 'secondary'][zoom >= 12][zoom < 13] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/shields/secondary_[length]x1.svg");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
    shield-clip: false;
  }
}

#roads_text_ref {
  [highway = 'motorway'][length < 12] {
    [zoom >= 13] {
      shield-name: "[ref]";
      shield-size: 10;
      shield-fill: #fff;
      shield-placement: line;
      shield-file: url("symbols/shields/motorway_[length]x1.svg");
      shield-spacing: 750;
      shield-min-distance: 30;
      shield-face-name: @bold-fonts;
      shield-clip: false;
    }
  }

  [highway = 'trunk'][zoom >= 13] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/shields/trunk_[length]x1.svg");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
    shield-clip: false;
  }

  [highway = 'primary'][zoom >= 13] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/shields/primary_[length]x1.svg");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
    shield-clip: false;
  }

  [highway = 'secondary'][bridge = 'no'][zoom >= 13] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/shields/secondary_[length]x1.svg");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
    shield-clip: false;
  }

  [highway = 'tertiary'][bridge = 'no'][zoom >= 13] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/shields/tertiary_[length]x1.svg");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
    shield-clip: false;
  }

  [highway = 'unclassified'],
  [highway = 'residential'] {
    [zoom >= 15][bridge = 'no'] {
      text-name: "[ref]";
      text-size: 10;
      text-fill: #000;
      text-face-name: @bold-fonts;
      text-min-distance: 18;
      text-halo-radius: 1;
      text-spacing: 750;
      text-clip: false;
    }
  }

  [highway = 'runway'],
  [highway = 'taxiway'] {
    [zoom >= 15][bridge = 'no'] {
      text-name: "[ref]";
      text-size: 10;
      text-fill: #333;
      text-spacing: 750;
      text-clip: false;
      text-placement: line;
      text-min-distance: 18;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
    }
  }
}

#roads_text_name {
  [highway = 'motorway'],
  [highway = 'motorway_link'],
  [highway = 'trunk'],
  [highway = 'trunk_link'],
  [highway = 'primary'],
  [highway = 'primary_link'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 0;
    }
    [zoom >= 14] {
      text-size: 9;
    }
    [zoom >= 15] {
      text-size: 10;
    }
  }
  [highway = 'secondary'],
  [highway = 'secondary_link'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 0;
    }
    [zoom >= 14] {
      text-size: 9;
    }
    [zoom >= 15] {
      text-size: 10;
    }
  }
  [highway = 'tertiary'],
  [highway = 'tertiary_link'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: #000;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 0;
    }
    [zoom >= 17] {
      text-size: 11;
    }
  }
  [highway = 'proposed'],
  [highway = 'construction'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 9;
      text-fill: #000;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
    }
    [zoom >= 16] {
      text-size: 11;
    }
  }
  [highway = 'residential'],
  [highway = 'unclassified'],
  [highway = 'road'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 8;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-halo-radius: 1;
      text-face-name: @book-fonts;
    }
    [zoom >= 16] {
      text-size: 9;
    }
    [zoom >= 17] {
      text-size: 11;
      text-spacing: 400;
    }
  }

  [highway = 'raceway'],
  [highway = 'service'] {
    [zoom >= 16] {
      text-name: "[name]";
      text-size: 9;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
    }
    [zoom >= 17] {
      text-size: 11;
    }
  }

  [highway = 'living_street'],
  [highway = 'pedestrian'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 8;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
    }
    [zoom >= 16] {
      text-size: 9;
    }
    [zoom >= 17] {
      text-size: 11;
    }
  }
}

#roads_area_text_name {
  [highway = 'pedestrian'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 8;
      text-face-name: @book-fonts;
      text-placement: interior;
      text-wrap-width: 30;
    }
    [zoom >= 16] {
      text-size: 9;
    }
    [zoom >= 17] {
      text-size: 11;
    }
  }
}

#paths_text_name {
  [highway = 'track'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-fill: #222;
      text-size: 8;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.8); 
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-dy: 5;
    }
    [zoom >= 16] {
      text-size: 9;
      text-dy: 7;
    }
    [zoom >= 17] {
      text-size: 11;
      text-dy: 9;
    }
  }

  [highway = 'footway'],
  [highway = 'cycleway'],
  [highway = 'path'],
  [highway = 'steps'] {
    [zoom >= 16] {
      text-name: "[name]";
      text-fill: #222;
      text-size: 9;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.8);
      text-spacing: 200;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-dy: 7;
    }
    [zoom >= 17] {
      text-size: 11;
      text-dy: 9;
    }
  }
}

#directions::directions {
  [zoom >= 16] {
    [oneway = 'yes'] {
      dira/line-width: 1;
      dira/line-dasharray: 0,12,10,152;
      dira/line-color: #6c70d5;
      dira/line-join: bevel;
      dira/line-clip: false;
      dirb/line-width: 2;
      dirb/line-dasharray: 0,12,9,153;
      dirb/line-color: #6c70d5;
      dirb/line-join: bevel;
      dirb/line-clip: false;
      dirc/line-width: 3;
      dirc/line-dasharray: 0,18,2,154;
      dirc/line-color: #6c70d5;
      dirc/line-join: bevel;
      dirc/line-clip: false;
      dird/line-width: 4;
      dird/line-dasharray: 0,18,1,155;
      dird/line-color: #6c70d5;
      dird/line-join: bevel;
      dird/line-clip: false;
    }
    [oneway = '-1'] {
      dira/line-width: 1;
      dira/line-dasharray: 0,12,10,152;
      dira/line-color: #6c70d5;
      dira/line-join: bevel;
      dira/line-clip: false;
      dirb/line-width: 2;
      dirb/line-dasharray: 0,13,9,152;
      dirb/line-color: #6c70d5;
      dirb/line-join: bevel;
      dirb/line-clip: false;
      dirc/line-width: 3;
      dirc/line-dasharray: 0,14,2,158;
      dirc/line-color: #6c70d5;
      dirc/line-join: bevel;
      dirc/line-clip: false;
      dird/line-width: 4;
      dird/line-dasharray: 0,15,1,158;
      dird/line-color: #6c70d5;
      dird/line-join: bevel;
      dird/line-clip: false;
    }
  }
}

// POWER.MSS //

#power_line {
  [zoom >= 14] {
    line-width: 1;
    line-color: #777;
  }
  [zoom >= 16] {
    line-width: 1.5;
  }
}

#power_minorline {
  [zoom >= 16] {
    line-width: 0.5;
    line-color: #777;
  }
}

#power_towers {
  [zoom >= 14] {
    point-file: url('symbols/power_tower_3x3.png');
  }
  [zoom >= 15] {
    point-file: url('symbols/power_tower_5x5.png');
  }
  [zoom >= 17] {
    point-file: url('symbols/power_tower.png');
  }
}

#power_poles {
  [zoom >= 16] {
    point-file: url('symbols/power_pole.png');
  }
}

// CITYWALLS.MSS //

#citywalls {
  [zoom >= 14] {
    line-color: grey;
    line-width: 4;
    line-opacity: 0.8;
    [zoom >= 15] {
      line-width: 6;
    }
    [zoom >= 16] {
      line-width: 9;
    }
  }
}

#castlewalls {
  [zoom >= 14] {
    line-color: #999;
    line-width: 1;
  }
  [zoom >= 16] {
    line-color: #888;
    line-width: 2;
  }
}

// PLACENAMES.MSS //

@placenames: #222;
@placenames-light: #777777;
#country {
  [place = 'country'][zoom >= 2][zoom < 6] {
    text-name: "[name]";
    text-size: 9;
    text-fill: #9d6c9d;
    text-face-name: @book-fonts;
    text-halo-radius: 1.5;
    text-wrap-width: 20;
    [zoom >= 4] {
      text-size: 10;
    }
  }
}

#state {
  [place = 'state'][zoom >= 4][zoom < 9] {
    text-name: "[ref]";
    text-size: 9;
    text-fill: #9d6c9d;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1.5;
    text-wrap-width: 0;
    [zoom >= 5] {
      text-name: "[name]";
    }
    [zoom >= 7] {
      text-size: 11;
    }
  }
}

#placenames_capital {
  [zoom >= 5][zoom < 15] {
    text-name: "[name]";
    text-size: 10;
    text-fill: @placenames;
    text-face-name: @book-fonts;
    text-halo-radius: 1.5;
    text-min-distance: 10;
    [zoom >= 6] {
      text-size: 12;
    }
    [zoom >= 11] {
      text-size: 15;
    }
  }
}

#placenames_medium::city {
  [place = 'city'] {
    [zoom >= 6][zoom < 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: @placenames;
      text-face-name: @book-fonts;
      text-halo-radius: 1.5;
      text-min-distance: 10;
      [zoom >= 9] {
        text-size: 12;
      }
      [zoom >= 11] {
        text-size: 15;
      }
    }
  }
}

#placenames_medium::town {
  [place = 'town'] {
    [zoom >= 9] {
      text-name: "[name]";
      text-size: 9;
      text-fill: @placenames;
      text-face-name: @book-fonts;
      text-halo-radius: 1.5;
      text-wrap-width: 20;
      text-min-distance: 10;
    }
    [zoom >= 11] {
      text-size: 11;
    }
    [zoom >= 14] {
      text-size: 15;
      text-fill: @placenames-light;
    }
  }
}

#placenames_small::suburb {
  [place = 'suburb'][zoom >= 12] {
    text-name: "[name]";
    text-size: 11;
    text-fill: @placenames;
    text-face-name: @book-fonts;
    text-halo-radius: 1.5;
    text-min-distance: 10;
    [zoom >= 14] {
      text-size: 14;
      text-fill: @placenames-light;
    }
  }
}

#placenames_small::village {
  [place = 'village'] {
    [zoom >=12] {
      text-name: "[name]";
      text-size: 10;
      text-fill: @placenames;
      text-face-name: @book-fonts;
      text-halo-radius: 1.5;
      text-min-distance: 10;
      [zoom >= 15] {
        text-size: 13;
        text-fill: @placenames-light;
      }
    }
  }
}

#placenames_small::hamlet {
  [place = 'hamlet'],
  [place = 'locality'],
  [place = 'neighbourhood'],
  [place = 'isolated_dwelling'],
  [place = 'farm'] {
    [zoom >= 14] {
      text-name: "[name]";
      text-size: 9;
      text-fill: @placenames;
      text-face-name: @book-fonts;
      text-halo-radius: 1.5;
      text-min-distance: 10;
    }
    [zoom >= 16] {
      text-size: 12;
      text-fill: @placenames-light;
    }
  }
}

// BUILDINGS.MSS //

@building: #bca9a9;
@station: #d4aaaa;
@supermarket: pink;
@placeOfWorship: #777;
@terminal: #cc99ff;

#buildings_lz {
  [zoom >= 10] {
    [railway = 'station']::railway,
    [building = 'station'] {
      polygon-fill: @station;
      polygon-clip: false;
    }

    [building = 'supermarket'] {
      polygon-fill: @supermarket;
      polygon-opacity: 0.5;
      polygon-clip: false;
    }

    [amenity = 'place_of_worship']::amenity {
      polygon-opacity: 0.5;
      polygon-fill: @placeOfWorship;
      polygon-clip: false;
      [zoom >= 15] {
        polygon-opacity: 0.9;
        polygon-fill: lighten(@placeOfWorship, 20%);
        line-width: 0.3;
        line-color: darken(@placeOfWorship, 40%);
      }
    }
  }
}

#buildings {
  [building = 'INT-light'][zoom >= 12] {
    polygon-fill: @building;
    polygon-opacity: 0.7;
    polygon-clip: false;
  }
  [building != 'INT-light'][building != ''][zoom >= 12] {
    polygon-fill: @building;
    polygon-opacity: 0.9;
    polygon-clip: false;
    [zoom >= 16] {
      line-color: saturate(darken(@building, 50%), 10%);
      line-width: 0.2;
    }
  }
  [aeroway = 'terminal'][zoom >= 12]::aeroway {
    polygon-fill: @terminal;
    polygon-clip: false;
    [zoom >= 14] {
      line-color: saturate(darken(@terminal, 50%), 20%);
      line-width: 0.2;
    }
  }
}

// AMENITY-SYMBOLS.MSS //

#symbols {
  [aeroway = 'helipad'][zoom >= 16]::aeroway {
    point-file: url('symbols/helipad.p.16.png');
    text-name: "[name]";
    text-size: 8;
    text-fill: #6692da;
    text-dy: -10;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [aeroway = 'aerodrome'][zoom >= 10][zoom < 13]::aeroway {
    [zoom < 11] {
      point-file: url('symbols/aerodrome.p.16.png');
      text-dy: -12;
    }
    text-name: "[name]";
    text-size: 8;
    text-fill: #6692da;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [railway = 'level_crossing'][zoom >= 14]::railway {
    point-file: url('symbols/level_crossing.png');
    point-placement: interior;
    [zoom >= 16] {
      point-file: url('symbols/level_crossing2.png');
    }
  }

  [man_made = 'lighthouse'][zoom >= 15]::man_made {
    point-file: url('symbols/lighthouse.p.20.png');
    point-placement: interior;
  }

  [natural = 'peak'][zoom >= 11]::natural {
    point-file: url('symbols/peak.png');
    point-placement: interior;
  }

  [natural = 'volcano'][zoom >= 11]::natural {
    point-file: url('symbols/volcano.png');
    point-placement: interior;
  }

  [natural = 'cave_entrance'][zoom >= 15]::natural {
    point-file: url('symbols/poi_cave.p.16.png');
    point-placement: interior;
  }

  [natural = 'spring'][zoom >= 14]::natural {
    point-file: url('symbols/spring.png');
    point-placement: interior;
  }

  [natural = 'tree'][zoom >= 16]::natural {
    point-file: url('symbols/tree.png');
    point-ignore-placement: true;
    point-placement: interior;
    [zoom >= 17] {
      point-file: url('symbols/tree2.png');
    }
  }

  [power = 'generator']['generator:source' = 'wind']::power,
  [power = 'generator'][power_source = 'wind']::power {
    [zoom >= 15] {
      point-file: url('symbols/power_wind.png');
      point-placement: interior;
    }
  }

  [man_made = 'windmill'][zoom >= 16]::man_made {
    point-file: url('symbols/windmill.png');
    point-placement: interior;
  }

  [man_made = 'mast'][zoom >= 17]::man_made {
    point-file: url('symbols/communications.p.20.png');
    point-placement: interior;
  }

  [highway = 'mini_roundabout'][zoom >= 16]::highway {
    point-file: url('symbols/mini_round.png');
    point-placement: interior;
  }

  [barrier = 'gate']::barrier {
    [zoom >= 15] {
      point-file: url('symbols/gate2.png');
      point-placement: interior;
    }
  }

  [barrier = 'lift_gate'][zoom >= 16]::barrier {
    point-file: url('symbols/liftgate.png');
    point-placement: interior;
  }

  [barrier = 'bollard'],
  [barrier = 'block'] {
    [zoom >= 16] {
      point-file: url('symbols/bollard.png');
      point-placement: interior;
    }
  }
}

// STATIONS.MSS //

#stations {
  [railway = 'subway_entrance'][zoom >= 18] {
    point-file: url('symbols/walking.n.12.png');
    point-placement: interior;
  }

  [railway = 'station'][zoom >= 12] {
    point-file: url('symbols/halt.png');
    point-placement: interior;
    [zoom >= 13] {
      point-file: url('symbols/station_small.png');
    }
    [zoom >= 14] {
      text-name: "[name]";
      text-face-name: @bold-fonts;
      text-size: 9;
      text-fill: #66f;
      text-dy: -8;
      text-halo-radius: 1;
      text-wrap-width: 0;
      text-placement: interior;
    }
    [zoom >= 15] {
      point-file: url('symbols/station.png');
      text-size: 11;
      text-dy: -10;
    }
  }

  [railway = 'halt'],
  [railway = 'tram_stop'],
  [aerialway = 'station']::aerialway {
    [zoom >= 13] {
      point-file: url('symbols/halt.png');
    }
    [zoom >= 15] {
      point-file: url('symbols/station_small.png');
    }
    [zoom >= 14] {
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-size: 8;
      text-fill: #66f;
      text-dy: -8;
      text-halo-radius: 1;
      text-wrap-width: 0;
      text-placement: interior;
      [zoom >= 15] {
        text-size: 10;
        text-dy: -10;
      }
    }
  }
}

// AMENITY-POINTS.MSS //

@marina-text: #576ddf; // also swimming_pool
@military-text: #99001a;
@park-text: #2c4b2c;
@shop-icon: #ac39ac;
@transportation-icon: #0092da;
@transportation-text: #0066ff;

#points {
  [tourism = 'alpine_hut'][zoom >= 13]::tourism {
    point-file: url('symbols/alpinehut.p.16.png');
    point-placement: interior;
  }

  [amenity = 'shelter'][zoom >= 16]::amenity {
    point-file: url('symbols/shelter2.p.16.png');
    point-placement: interior;
  }

  [amenity = 'atm'][zoom >=17]::amenity {
    point-file: url('symbols/atm2.p.16.png');
    point-placement: interior;
  }

  [amenity = 'bank'][zoom >= 17]::amenity {
    point-file: url('symbols/bank2.p.16.png');
    point-placement: interior;
  }

  [amenity = 'bar'][zoom >=17]::amenity {
    point-file: url('symbols/bar.p.20.png');
    point-placement: interior;
  }

  [amenity = 'bicycle_rental'][zoom >= 17]::amenity {
    point-file: url('symbols/rental_bicycle.p.20.png');
    point-placement: interior;
  }

  [highway = 'bus_stop']::highway {
    [zoom >= 16] {
      point-file: url('symbols/bus_stop_small.png');
      point-placement: interior;
    }
    [zoom >= 17] {
      point-file: url('symbols/bus_stop.p.12.png');
    }
  }

  [amenity = 'bus_station'][zoom >= 16]::amenity {
    point-file: url('symbols/bus_station.n.16.png');
    point-placement: interior;
  }

  [highway = 'traffic_signals'][zoom >= 17]::highway {
    point-file: url('symbols/traffic_light.png');
    point-placement: interior;
  }

  [amenity = 'cafe'][zoom >=17]::amenity {
    point-file: url('symbols/cafe.p.16.png');
    point-placement: interior;
  }

  [tourism = 'camp_site'][zoom >= 16]::tourism {
    point-file: url('symbols/camping.n.16.png');
    point-placement: interior;
  }

  [highway = 'ford'][zoom >= 16]::highway {
    point-file: url('symbols/transport_ford.p.16.png');
    point-placement: interior;
  }

  [tourism = 'caravan_site'][zoom >= 16]::tourism {
    point-file: url('symbols/caravan_park.p.24.png');
    point-placement: interior;
  }

  [amenity = 'car_sharing'][zoom >= 16]::amenity {
    point-file: url('symbols/car_share.p.16.png');
    point-placement: interior;
  }

  [tourism = 'chalet'][zoom >= 17]::tourism {
    point-file: url('symbols/chalet.p.16.png');
    point-placement: interior;
  }

  [amenity = 'cinema'][zoom >= 17]::amenity {
    point-file: url('symbols/cinema.p.24.png');
    point-placement: interior;
  }

  [amenity = 'fire_station'][zoom >= 17]::amenity {
    point-file: url('symbols/firestation.p.16.png');
    point-placement: interior;
  }

  [amenity = 'fuel'][zoom >= 17]::amenity {
    point-file: url('symbols/fuel.p.16.png');
    point-placement: interior;
  }

  [tourism = 'guest_house'][zoom >= 17]::tourism {
    point-file: url('symbols/guest_house.p.16.png');
    point-placement: interior;
  }

  [amenity = 'hospital'][zoom >= 15]::amenity {
    point-file: url('symbols/hospital.p.16.png');
    point-placement: interior;
  }

  [tourism = 'hostel'][zoom >= 17]::tourism {
    point-file: url('symbols/hostel.p.20.png');
    point-placement: interior;
  }

  [tourism = 'hotel'][zoom >= 17]::tourism {
    point-file: url('symbols/hotel2.p.20.png');
    point-placement: interior;
  }

  [tourism = 'motel'][zoom >= 17]::tourism {
    point-file: url('symbols/motel.p.20.png');
    point-placement: interior;
  }

  [tourism = 'information'][zoom >= 16]::tourism {
    point-file: url('symbols/information.p.16.png');
    point-placement: interior;
  }

  [amenity = 'embassy'][zoom >= 17]::amenity {
    point-file: url('symbols/embassy.png');
    point-placement: interior;
  }

  [amenity = 'library'][zoom >= 17]::amenity {
    point-file: url('symbols/library.p.20.png');
    point-placement: interior;
  }

  [amenity = 'courthouse'][zoom > 17]::amenity {
    point-file: url('symbols/amenity_court.p.20.png');
    point-placement: interior;
  }

  [waterway = 'lock']::waterway,
  [lock = 'yes']::lock {
    [zoom >= 15] {
      point-file: url('symbols/lock_gate.png');
      point-placement: interior;
    }
  }

  [man_made = 'mast'][zoom >= 17]::man_made {
    point-file: url('symbols/communications.p.20.png');
    point-placement: interior;
  }

  [tourism = 'museum'][zoom >= 17]::tourism {
    point-file: url('symbols/museum.p.16.png');
    point-placement: interior;
  }

  [amenity = 'parking'][zoom >= 15]::amenity {
    marker-file: url('symbols/parking.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @transportation-icon;
    [access != ''][access != 'public'][access != 'yes'] {
      marker-opacity: 0.33;
    }
  }

  [amenity = 'pharmacy'][zoom >= 17]::amenity {
    point-file: url('symbols/pharmacy.p.16.png');
    point-placement: interior;
  }

  [amenity = 'place_of_worship'][zoom >= 16]::amenity {
    point-file: url('symbols/place_of_worship3.p.16.png');
    point-placement: interior;
    [religion = 'christian'] {
      point-file: url('symbols/christian3.p.14.png');
    }
    [religion = 'muslim'] {
      point-file: url('symbols/islamic3.p.16.png');
    }
    [religion = 'sikh'] {
      point-file: url('symbols/sikh3.p.16.png');
    }
    [religion = 'jewish'] {
      point-file: url('symbols/jewish3.p.16.png');
    }
    [religion = 'hindu'] {
      point-file: url('symbols/hindu.png');
    }
    [religion = 'buddhist'] {
      point-file: url('symbols/buddhist.png');
    }
    [religion = 'shinto'] {
      point-file: url('symbols/shinto.png');
    }
    [religion = 'taoist'] {
      point-file: url('symbols/taoist.png');
    }
  }

  [amenity = 'police'][zoom >= 17]::amenity {
    point-file: url('symbols/police.p.16.png');
    point-placement: interior;
  }

  [amenity = 'post_box'][zoom >= 17]::amenity {
    point-file: url('symbols/post_box.p.16.png');
    point-placement: interior;
  }

  [amenity = 'post_office'][zoom >= 17]::amenity {
    point-file: url('symbols/post_office.p.16.png');
    point-placement: interior;
  }

  [amenity = 'pub'][zoom >= 16]::amenity {
    point-file: url('symbols/pub.p.16.png');
    point-placement: interior;
  }

  [amenity = 'biergarten'][zoom >= 16]::amenity {
    point-file: url('symbols/biergarten.p.16.png');
    point-placement: interior;
  }

  [amenity = 'recycling'][zoom >= 16]::amenity {
    point-file: url('symbols/recycling.p.16.png');
    point-placement: interior;
  }

  [amenity = 'restaurant'][zoom >= 17]::amenity {
    point-file: url('symbols/restaurant.p.16.png');
    point-placement: interior;
  }

  [amenity = 'fast_food'][zoom >= 17]::amenity {
    point-file: url('symbols/fast_food.png');
    point-placement: interior;
  }

  [amenity = 'telephone'][zoom >= 17]::amenity {
    point-file: url('symbols/telephone.p.16.png');
    point-placement: interior;
  }

  [amenity = 'emergency_phone'][zoom >= 17]::amenity {
    point-file: url('symbols/sosphone.png');
    point-placement: interior;
  }

  [amenity = 'theatre'][zoom >= 17]::amenity {
    point-file: url('symbols/theatre.p.20.png');
    point-placement: interior;
  }

  [amenity = 'toilets'][zoom >= 17]::amenity {
    point-file: url('symbols/toilets.p.20.png');
    point-placement: interior;
  }

  [amenity = 'drinking_water'][zoom >= 17]::amenity {
    point-file: url('symbols/food_drinkingtap.p.20.png');
    point-placement: interior;
  }

  [amenity = 'prison'][zoom >= 17]::amenity {
    point-file: url('symbols/amenity_prison.p.20.png');
    point-placement: interior;
  }

  [tourism = 'viewpoint'][zoom >= 16]::tourism {
    point-file: url('symbols/view_point.p.16.png');
    point-placement: interior;
  }

  [man_made = 'water_tower'][zoom >= 17]::man_made {
    point-file: url('symbols/tower_water.p.20.png');
    point-placement: interior;
  }

  [historic = 'memorial'][zoom >= 17]::historic {
    point-file: url('symbols/tourist_memorial.p.20.png');
    point-placement: interior;
  }

  [historic = 'archaeological_site'][zoom >= 16]::historic {
    point-file: url('symbols/tourist_archaeological2.glow.24.png');
    point-placement: interior;
  }

  [shop != ''][zoom >= 17]::shop {
    marker-file: url('symbols/shop.p.16.png');
    marker-placement: interior;
    marker-clip: false;
  }

  [shop = 'supermarket'][zoom >= 16]::shop {
    marker-file: url('symbols/shop_supermarket.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }

  [shop = 'bakery'][zoom >= 17]::shop {
    marker-file: url('symbols/shop_bakery.p.16.png');
    marker-placement: interior;
    marker-clip: false;
  }

  [shop = 'butcher'][zoom >= 17]::shop {
    marker-file: url('symbols/shop_butcher.png');
    marker-placement: interior;
    marker-clip: false;
  }

  [shop = 'clothes']::shop,
  [shop = 'fashion']::shop {
    [zoom >= 17] {
      marker-file: url('symbols/shop_clothes.svg');
      marker-placement: interior;
      marker-clip: false;
      marker-fill: @shop-icon;
    }
  }

  [shop = 'convenience'][zoom >= 17]::shop {
    marker-file: url('symbols/shop_convenience.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }

  [shop = 'department_store'][zoom >= 16]::shop {
    point-file: url('symbols/department_store.p.16.png');
    point-placement: interior;
  }

  [shop = 'doityourself'][zoom >= 17]::shop {
    marker-file: url('symbols/shop_diy.p.16.png');
    marker-placement: interior;
    marker-clip: false;
  }

  [shop = 'florist'][zoom >= 17]::shop {
    marker-file: url('symbols/florist.p.16.png');
    marker-placement: interior;
    marker-clip: false;
  }

  [shop = 'hairdresser'][zoom >= 17]::shop {
    marker-file: url('symbols/shop_hairdresser.p.16.png');
    marker-placement: interior;
    marker-clip: false;
  }

  [shop = 'car'][zoom >= 17]::shop {
    marker-file: url('symbols/shop_car.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }

  [shop = 'car_repair'][zoom >= 17]::shop {
    marker-file: url('symbols/shopping_car_repair.p.16.png');
    marker-placement: interior;
    marker-clip: false;
  }

  [shop = 'bicycle'][zoom >= 17]::shop {
    marker-file: url('symbols/shopping_bicycle.p.16.png');
    marker-placement: interior;
    marker-clip: false;
  }

  [leisure = 'playground'][zoom >= 17]::leisure {
    point-file: url('symbols/playground.p.20.png');
    point-placement: interior;
  }

  [tourism = 'picnic_site'][zoom >= 16]::tourism {
    point-file: url('symbols/picnic.p.16.png');
    point-placement: interior;
  }

  [leisure = 'picnic_table'][zoom >= 17]::leisure {
    point-file: url('symbols/picnic.p.16.png');
    point-placement: interior;
  }

  [leisure = 'slipway'][zoom >= 17]::leisure {
    point-file: url('symbols/transport_slipway.p.20.png');
    point-placement: interior;
  }
}


#text {
  [place = 'island'][zoom >= 12]::place {
    text-name: "[name]";
    text-fill: #000;
    text-size: 9;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [amenity = 'pub']::amenity,
  [amenity = 'restaurant']::amenity,
  [amenity = 'cafe']::amenity,
  [amenity = 'fast_food']::amenity,
  [amenity = 'biergarten']::amenity {
    [zoom >= 17] {
      text-name: "[name]";
      text-fill: #734a08;
      text-size: 10;
      text-dy: 9;
      text-face-name: @bold-fonts;
      text-halo-radius: 1;
      text-wrap-width: 34;
      text-placement: interior;
    }
  }

  [amenity = 'bar'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 10;
    text-fill: #734a08;
    text-dy: 11;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [amenity = 'library']::amenity,
  [amenity = 'theatre']::amenity,
  [amenity = 'courthouse']::amenity {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 10;
      text-fill: #734a08;
      text-dy: 12;
      text-face-name: @bold-fonts;
      text-halo-radius: 1;
      text-placement: interior;
    }
  }

  [amenity = 'cinema'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 10;
    text-fill: #734a08;
    text-dy: 14;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [amenity = 'parking'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 9;
    text-fill: @transportation-text;
    text-dy: 9;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 34;
    text-placement: interior;
    [access != ''][access != 'public'][access != 'yes'] {
      text-fill: #66ccaf;
    }
  }

  [amenity = 'police'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 10;
    text-fill: #734a08;
    text-dy: 10;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 30;
    text-placement: interior;
  }

  [amenity = 'fire_station'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 10;
    text-fill: #734a08;
    text-dy: 9;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 30;
    text-placement: interior;
  }

  [amenity = 'place_of_worship'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 10;
    text-fill: #000033;
    text-dy: 12;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 30;
    text-placement: interior;
  }

  [natural = 'wood'][zoom >= 15]::natural {
    text-name: "[name]";
    text-size: 10;
    text-fill: darken(@wood, 50%);
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 10;
    text-placement: interior;
  }

  [natural = 'peak']::natural,
  [natural = 'volcano']::natural {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 10;
      text-fill: brown;
      text-dy: 7;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-placement: interior;
      ele/text-name: "[ele]";
      ele/text-size: 9;
      ele/text-fill: brown;
      ele/text-dy: 6;
      ele/text-face-name: @oblique-fonts;
      ele/text-halo-radius: 1;
      ele/text-placement: interior;
      [name != ''] {
        ele/text-dy: 19;
      }
    }
  }

  [natural = 'cave_entrance'][zoom >= 15]::natural {
    text-name: "[name]";
    text-size: 10;
    text-fill: brown;
    text-dy: 9;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    text-placement: interior;
  }

  [historic = 'memorial'][zoom >= 17]::historic {
    text-name: "[name]";
    text-size: 9;
    text-fill: brown;
    text-dy: 13;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    text-placement: interior;
  }

  [historic = 'archaeological_site'][zoom >= 17]::historic {
    text-name: "[name]";
    text-size: 9;
    text-fill: brown;
    text-dy: 15;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    text-placement: interior;
  }

  [natural = 'water']::natural,
  [natural = 'lake']::natural,
  [landuse = 'reservoir']::landuse,
  [landuse = 'basin']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 12;
      text-fill: @water-text;
      text-face-name: @oblique-fonts;
      text-halo-radius: 1;
      text-wrap-width: 20;
      text-placement: interior;
    }
  }

  [leisure = 'swimming_pool']::leisure {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 9;
      text-fill: @marina-text;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
      text-placement: interior;
    }
  }

  [leisure = 'sports_centre']::leisure,
  [leisure = 'stadium']::leisure,
  [leisure = 'track']::leisure,
  [leisure = 'pitch']::leisure {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: darken(@stadium, 30%);
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
      text-placement: interior;
    }
  }

  [leisure = 'playground']::leisure,
  [leisure = 'park']::leisure,
  [leisure = 'recreation_ground']::leisure,
  [landuse = 'recreation_ground']::landuse,
  [landuse = 'conservation']::landuse,
  [landuse = 'village_green']::landuse,
  [leisure = 'common']::leisure,
  [leisure = 'garden']::leisure,
  [leisure = 'golf_course']::leisure,
  [leisure = 'nature_reserve']::leisure {
    [way_area >= 150000][zoom >= 14],
    [way_area >= 80000][zoom >= 15],
    [way_area >= 20000][zoom >= 16],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 11;
      text-fill: @park-text;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: 30;
      text-placement: interior;
    }
  }

  [landuse = 'quarry']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: #000;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
    }
  }

  [landuse = 'vineyard']::landuse,
  [landuse = 'orchard']::landuse  {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: darken(@vineyard, 50%);
      text-face-name: @book-fonts;
      // extra halo needed to overpower the cemetery polygon pattern
      text-halo-radius: 1.5;
      text-wrap-width: 10;
    }
  }

  [landuse = 'cemetery']::landuse,
  [landuse = 'grave_yard']::landuse  {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: darken(@cemetery, 50%);
      text-face-name: @book-fonts;
      // extra halo needed to overpower the cemetery polygon pattern
      text-halo-radius: 1.5;
      text-wrap-width: 10;
    }
  }

  [landuse = 'residential']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: #000;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
    }
  }

  [landuse = 'garages']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: darken(@garages, 50%);
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
    }
  }

  [landuse = 'field']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: darken(@field, 50%);
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
    }
  }

  [landuse = 'meadow']::landuse,
  [landuse = 'grass']::landuse  {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: darken(@grass, 65%);
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
    }
  }

  [landuse = 'allotments']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: darken(@allotments, 60%);
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
    }
  }

  [landuse = 'forest']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: darken(@forest, 50%);
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
    }
  }

  [landuse = 'farm']::landuse,
  [landuse = 'farmland']::landuse,
  [landuse = 'farmyard']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: darken(@farmland, 70%);
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
    }
  }

  [landuse = 'retail']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: darken(@retail, 60%);
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
    }
  }

  [landuse = 'industrial']::landuse,
  [landuse = 'railway']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: darken(@industrial, 60%);
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
    }
  }

  [landuse = 'commercial']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: darken(@commercial, 60%);
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
    }
  }

  [landuse = 'brownfield']::landuse,
  [landuse = 'landfill']::landuse,
  [landuse = 'construction']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: darken(@construction, 50%);
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
    }
  }

  [natural = 'bay'][zoom >= 14]::natural {
    text-name: "[name]";
    text-size: 10;
    text-fill: #6699cc;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    text-placement: interior;
  }

  [natural = 'spring'][zoom >= 16]::natural {
    text-name: "[name]";
    text-size: 10;
    text-fill: #6699cc;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    text-placement: interior;
    text-dy: 6;
  }

  [tourism = 'alpine_hut'][zoom >= 15]::tourism {
    text-name: "[name]";
    text-size: 9;
    text-fill: #6699cc;
    text-dy: 10;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
    [zoom >= 16] {
      ele/text-name: "[ele]";
      ele/text-size: 8;
      ele/text-fill: #6699cc;
      ele/text-dy: 22;
      ele/text-face-name: @oblique-fonts;
      ele/text-halo-radius: 1;
      ele/text-placement: interior;
    }
  }

  [amenity = 'shelter'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 9;
    text-fill: #6699cc;
    text-dy: 10;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
    ele/text-name: "[ele]";
    ele/text-size: 8;
    ele/text-fill: #6699cc;
    ele/text-dy: 22;
    ele/text-face-name: @oblique-fonts;
    ele/text-halo-radius: 1;
    ele/text-placement: interior;
  }

  [amenity = 'bank'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 9;
    text-fill: black;
    text-dy: 9;
    text-halo-radius: 1;
    text-placement: interior;
    text-face-name: @book-fonts;
  }

  [tourism = 'hotel']::tourism,
  [tourism = 'motel']::tourism,
  [tourism = 'hostel']::tourism,
  [tourism = 'chalet']::tourism {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 10;
      text-fill: #0066ff;
      text-dy: 11;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-placement: interior;
    }
  }

  [amenity = 'embassy'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 9;
    text-fill: #0066ff;
    text-dy: 8;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [tourism = 'guest_house'][zoom >= 17]::tourism {
    text-name: "[name]";
    text-size: 8;
    text-fill: #0066ff;
    text-dy: 10;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [tourism = 'bed_and_breakfast'][zoom >= 17]::tourism {
    text-name: "[name]";
    text-size: 8;
    text-fill: #0066ff;
    text-dy: 8;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [amenity = 'fuel']::amenity,
  [amenity = 'bus_station']::amenity {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 9;
      text-fill: @transportation-text;
      text-dy: 9;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
    }
  }

  [tourism = 'camp_site'][zoom >= 17]::tourism {
    text-name: "[name]";
    text-size: 10;
    text-fill: #0066ff;
    text-dy: 15;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 70;
  }

  [tourism = 'caravan_site'][zoom >= 17]::tourism {
    text-name: "[name]";
    text-size: 10;
    text-fill: #0066ff;
    text-dy: 19;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 70;
  }

  [waterway = 'lock'][zoom >= 15]::waterway {
    text-name: "[name]";
    text-size: 9;
    text-dy: 10;
    text-fill: #0066ff;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 70;
  }

  [leisure = 'marina'][zoom >= 15]::leisure {
    text-name: "[name]";
    text-size: 8;
    text-fill: @marina-text;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 30;
    text-placement: interior;
    [zoom >= 17] {
      text-size: 10;
    }
  }

  [tourism = 'theme_park'][zoom >= 14]::tourism {
    text-name: "[name]";
    text-size: 8;
    text-fill: #734a08;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 30;
    text-placement: interior;
    [zoom >= 16] {
      text-size: 10;
    }
  }

  [tourism = 'museum'][zoom >= 17]::tourism {
    text-name: "[name]";
    text-size: 10;
    text-dy: 10;
    text-fill: #734a08;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [amenity = 'prison'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 10;
    text-fill: #734a08;
    text-dy: 16;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [tourism = 'attraction'][zoom >= 16]::tourism {
    text-name: "[name]";
    text-size: 10;
    text-fill: #660033;
    text-face-name: @book-fonts;
    text-halo-radius: 2;
    text-wrap-width: 10;
    text-placement: interior;
  }

  [amenity = 'university'][zoom >= 15]::amenity {
    text-name: "[name]";
    text-size: 9;
    text-fill: #000033;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-wrap-width: 16;
    text-placement: interior;
  }

  [amenity = 'school']::amenity,
  [amenity = 'college']::amenity {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: #000033;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 14;
      text-placement: interior;
    }
  }

  [amenity = 'kindergarten'][zoom >= 16]::amenity {
    text-name: "[name]";
    text-size: 8;
    text-fill: #000033;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 14;
    text-placement: interior;
  }

  [man_made = 'lighthouse'][zoom >= 15]::man_made {
    text-name: "[name]";
    text-size: 9;
    text-fill: #000033;
    text-dy: 16;
    text-face-name: @book-fonts;
    text-halo-radius: 2;
    text-wrap-width: 12;
    text-placement: interior;
  }

  [man_made = 'windmill'][zoom >= 17]::man_made {
    text-name: "[name]";
    text-size: 9;
    text-fill: #734a08;
    text-dy: 12;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    text-placement: interior;
  }

  [amenity = 'hospital'][zoom >= 16]::amenity {
    text-name: "[name]";
    text-fill: #da0092;
    text-size: 8;
    text-dy: 10;
    text-face-name: @book-fonts;
    text-halo-radius: 2;
    text-wrap-width: 24;
    text-placement: interior;
  }

  [amenity = 'pharmacy'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 8;
    text-dy: 10;
    text-fill: #da0092;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 12;
    text-placement: interior;
  }

  /* Default shop text style */
  [shop != ''][zoom >= 17]::shop {
    text-name: [name];
    text-size: 9;
    text-dy: 10;
    text-fill: #939;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 12;
    text-placement: interior;
  }

  [shop = 'bakery']::shop,
  [shop = 'clothes']::shop,
  [shop = 'fashion']::shop,
  [shop = 'convenience']::shop,
  [shop = 'doityourself']::shop,
  [shop = 'hairdresser']::shop,
  [shop = 'butcher']::shop,
  [shop = 'car']::shop,
  [shop = 'car_repair']::shop,
  [shop = 'bicycle']::shop,
  [shop = 'florist']::shop {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 8;
      text-dy: 10;
      text-fill: #939;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 12;
      text-placement: interior;
    }
  }

  [shop = 'supermarket']::shop,
  [shop = 'department_store']::shop {
    [zoom >= 16] {
      text-name: "[name]";
      text-size: 9;
      text-dy: 11;
      text-fill: #939;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 20;
      text-placement: interior;
    }
  }

  [military = 'danger_area'][zoom >= 12]::military {
    text-name: "[name]";
    text-size: 9;
    text-fill: @military-text;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-wrap-width: 10;
    text-placement: interior;
  }

  [landuse = 'military']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: @military-text;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
      text-placement: interior;
    }
  }

  [aeroway = 'gate'][zoom >= 17]::aeroway {
    text-name: "[ref]";
    text-size: 10;
    text-fill: #aa66cc;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 10;
    text-placement: interior;
  }
}

// FERRY-ROUTES.MSS //

#ferry_routes {
  [zoom >= 7] {
    line-color: #66f;
    line-width: 0.4;
    line-dasharray: 4,4;
    [zoom >= 11] {
      line-width: 0.8;
      line-dasharray: 6,6;
    }
  }
}

// AERIALWAYS.MSS //

#aerialways {
  [aerialway = 'cable_car'],
  [aerialway = 'gondola'],
  [aerialway = 'goods'] {
    [zoom >= 12] {
      line-pattern-file: url('symbols/cable_car.png');
    }
  }

  [aerialway = 'chair_lift'],
  [aerialway = 'drag_lift'],
  [aerialway = 't-bar'],
  [aerialway = 'j-bar'],
  [aerialway = 'platter'],
  [aerialway = 'rope_tow'] {
    [zoom >= 12] {
      line-pattern-file: url('symbols/chair_lift.png');
    }
  }
}

// ADMIN.MSS //

@admin-boundaries: #ac46ac;

#admin_01234 {
  [admin_level = '2'],
  [admin_level = '3'] {
    [zoom >= 4] {
      line-color: @admin-boundaries;
      line-width: 0.6;
    }
    [zoom >= 7] {
      line-width: 2;
    }
    [zoom >= 10] {
      [admin_level = '2'] {
        line-width: 6;
      }
      [admin_level = '3'] {
        line-width: 5;
        line-dasharray: 4,2;
        line-clip: false;
      }
    }
  }
  [admin_level = '4'] {
    [zoom >= 4] {
      line-color: @admin-boundaries;
      line-width: 0.6;
      line-dasharray: 4,3;
      line-clip: false;
    }
    [zoom >= 7] {
      line-width: 1;
    }
    [zoom >= 11] {
      line-width: 3;
    }
  }
  opacity: 0.4;
}

#admin_5678 {
  [admin_level = '5'][zoom >= 11] {
    line-color: @admin-boundaries;
    line-width: 2;
    line-dasharray: 6,3,2,3,2,3;
    line-clip: false;
  }
  [admin_level = '6'][zoom >= 11] {
    line-color: @admin-boundaries;
    line-width: 2;
    line-dasharray: 6,3,2,3;
    line-clip: false;
  }
  [admin_level = '7'],
  [admin_level = '8'] {
    [zoom >= 12] {
      line-color: @admin-boundaries;
      line-width: 1.5;
      line-dasharray: 5,2;
      line-clip: false;
    }
  }
  opacity: 0.5;
}

#admin_other {
  [admin_level = '9'],
  [admin_level = '10'] {
    [zoom >= 13] {
      line-color: @admin-boundaries;
      line-width: 2;
      line-dasharray: 2,3;
      line-clip: false;
    }
  }
  opacity: 0.5;
}

#admin_text[zoom >= 16] {
  text-name: "[name]";
  text-face-name: @book-fonts;
  text-fill: @admin-boundaries;
  text-placement: line;
  text-halo-radius: 1.0;
  text-placement: line;
  text-dy: -10;
}

#nature_reserve_boundaries {
  [zoom >= 7] {
    ::fill [zoom < 13] {
      opacity: 0.05;
      polygon-fill: green;
    }
    ::line {
      opacity: 0.15;
      line-color: green;
      line-width: 1.5;
      line-dasharray: 4,2;
      [zoom >= 10] {
        line-width: 3;
        line-dasharray: 6,2;
        line-join: bevel;
      }
    }
  }
  [way_area > 200000000][zoom >= 8][zoom < 12] {
    text-name: "[name]";
    text-size: 8;
    text-fill: #9c9;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-wrap-width: 14;
    text-placement: interior;
    [zoom >= 11] { text-size: 11; }
  }
}

// ADDRESSING.MSS //

#interpolation {
  [zoom >= 17] {
    line-color: #888;
    line-width: 1;
    line-dasharray: 2,4;
  }
}

#housenumbers {
  [zoom >= 17] {
    text-name: "[addr:housenumber]";
    text-placement: interior;
    text-min-distance: 1;
    text-wrap-width: 0;
    text-face-name: @book-fonts;
    text-fill: #444;
    text-size: 9;
  }
}

#housenames {
  [zoom >= 17] {
    text-name: "[addr:housename]";
    text-placement: interior;
    text-wrap-width: 20;
    text-face-name: @book-fonts;
    text-size: 8;
    text-fill: #444;
    [zoom >= 18] {
      text-size: 9;
    }
  }
}

#building_text {
  [way_area >= 150000][zoom >= 14],
  [way_area >= 80000][zoom >= 15],
  [way_area >= 20000][zoom >= 16],
  [zoom >= 17] {
    text-name: "[name]";
    text-size: 11;
    text-fill: #444;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    text-halo-fill: rgba(255,255,255,0.5);
    text-placement: interior;
  }
}


