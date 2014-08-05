Map {
  background-color: @water-color;
}

@book-fonts:    "Avenir Book";
@bold-fonts:    "Avenir Black";
@oblique-fonts: "Avenir Oblique";
  
@water-color: #b5d0d0;
@land-color: #f2efe9;



/*
	Stations.mss
*/

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


/*
	aerialways.mss
*/

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


/*
	power.mss
*/

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


/*
	ferry-routes.mss
*/

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
