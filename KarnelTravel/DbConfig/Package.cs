using System;
using System.Collections.Generic;

namespace KarnelTravel.DbConfig;

public partial class Package
{
    public int PackagesId { get; set; }

    public string? Name { get; set; }

    public string? Destination { get; set; }

    public string? ImagePath { get; set; }

    public string? Description { get; set; }

    public decimal Price { get; set; }

    public string? Days { get; set; }

    public string Persons { get; set; } = null!;

    public bool? Deleted { get; set; }
}
