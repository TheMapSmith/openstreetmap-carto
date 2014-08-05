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

/*
	addressing.mss
*/

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


/*
	placenames.mss
*/

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


/*
	citywalls.mss
*/

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
