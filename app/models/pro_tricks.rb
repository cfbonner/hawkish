class ProTricks

  def all
    {
      flips: flips,
      grabs: grabs,
      grinds: grinds,
      manuals: manuals,
    }
  end

  def flips
    [
      'Kickflip',
      'Double Kickflip',
      'Heelflip',
      'Impossible',
      'Pop Shove-It',
      'Hardflip',
      'Inward Heelflip',
      'Varial Kickflip',
      'Varial Heelflip',
    ]
  end

  def grabs
    [
      'Melon',
      'Indy',
      'Nosegrab',
      'Tailgrab',
      'Japan',
      'Madonna',
      'Benihana',
      'Airwalk',
    ]
  end

  def grinds 
    [
      '50-50',
      'Noseslide',
      'Tailslide',
      'Nosegrind',
      '5-0',
      'Overcrook',
      'Crook',
      'Feeble',
      'Smith',
    ]
  end

  def manuals
    [
      'Manual',
      'Nose Manual',
      'Pogo',
      'Wrap Around',
      'Handstand',
      'Casper',
      'Truck Stand',
      'Anti Casper',
      'To Rail',
      'Switch Foot Pogo',
      'One Foot Manual',
    ]
  end
end
