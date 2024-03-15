using System;
using System.Collections.Generic;

namespace KarnelTravel.DbConfig;

public partial class Customer
{
    public int CustomerId { get; set; }

    public string Name { get; set; } = null!;

    public bool? InActive { get; set; }

    public bool? Deleted { get; set; }

    public virtual ICollection<CustomerInfo> CustomerInfos { get; set; } = new List<CustomerInfo>();
}
