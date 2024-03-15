using System;
using System.Collections.Generic;

namespace KarnelTravel.DbConfig;

public partial class HotelInfo
{
    public int HotelInfoId { get; set; }

    public string? Name { get; set; }

    public string? Description { get; set; }

    public string? ImagePath { get; set; }

    public string? City { get; set; }

    public bool? Deleted { get; set; }
}
