using System;
using System.Collections.Generic;

namespace KarnelTravel.DbConfig;

public partial class Login
{
    public int LoginId { get; set; }

    public string Username { get; set; } = null!;

    public string Password { get; set; } = null!;

    public int? RoleId { get; set; }

    public bool? Deleted { get; set; }

    public virtual Role? Role { get; set; }
}
