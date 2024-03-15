using System;
using System.Collections.Generic;

namespace KarnelTravel.DbConfig;

public partial class PopularSpot
{
    public int PopularSpotsId { get; set; }

    public string? Name { get; set; }

    public string? Discount { get; set; }

    public bool? Deleted { get; set; }
}
