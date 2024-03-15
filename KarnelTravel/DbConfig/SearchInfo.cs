using System;
using System.Collections.Generic;

namespace KarnelTravel.DbConfig;

public partial class SearchInfo
{
    public int SearchInfoId { get; set; }

    public string? City { get; set; }

    public string? ServiceType { get; set; }
}
