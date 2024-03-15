using System;
using System.Collections.Generic;

namespace KarnelTravel.DbConfig;

public partial class CustomerInfo
{
    public int CustomerInfoId { get; set; }

    public int? CustomerId { get; set; }

    public string CustomerCountry { get; set; } = null!;

    public string CustomerCity { get; set; } = null!;

    public string CustomerAddress { get; set; } = null!;

    public virtual Customer? Customer { get; set; }
}
