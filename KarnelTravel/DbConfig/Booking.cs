using System;
using System.Collections.Generic;

namespace KarnelTravel.DbConfig;

public partial class Booking
{
    public int BookingId { get; set; }

    public string Name { get; set; } = null!;

    public string Date { get; set; } = null!;

    public string Email { get; set; } = null!;

    public string Destination { get; set; } = null!;

    public string? Request { get; set; }

    public bool? Deleted { get; set; }
}
