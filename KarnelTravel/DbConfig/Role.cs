using System;
using System.Collections.Generic;

namespace KarnelTravel.DbConfig;

public partial class Role
{
    public int RoleId { get; set; }

    public string Name { get; set; } = null!;

    public bool? InActive { get; set; }

    public bool? Deleted { get; set; }

    public virtual ICollection<Login> Logins { get; set; } = new List<Login>();
}
