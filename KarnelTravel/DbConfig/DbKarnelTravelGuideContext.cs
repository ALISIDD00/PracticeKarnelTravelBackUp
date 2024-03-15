using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace KarnelTravel.DbConfig;

public partial class DbKarnelTravelGuideContext : DbContext
{
    public DbKarnelTravelGuideContext()
    {
    }

    public DbKarnelTravelGuideContext(DbContextOptions<DbKarnelTravelGuideContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Booking> Bookings { get; set; }

    public virtual DbSet<Customer> Customers { get; set; }

    public virtual DbSet<CustomerInfo> CustomerInfos { get; set; }

    public virtual DbSet<HotelInfo> HotelInfos { get; set; }

    public virtual DbSet<Login> Logins { get; set; }

    public virtual DbSet<Package> Packages { get; set; }

    public virtual DbSet<PopularSpot> PopularSpots { get; set; }

    public virtual DbSet<ResortInfo> ResortInfos { get; set; }

    public virtual DbSet<RestaurantInfo> RestaurantInfos { get; set; }

    public virtual DbSet<Role> Roles { get; set; }

    public virtual DbSet<SearchInfo> SearchInfos { get; set; }

    public virtual DbSet<TouristSpot> TouristSpots { get; set; }

    public virtual DbSet<TravelInfo> TravelInfos { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)

        => optionsBuilder.UseSqlServer("Data Source=DESKTOP-K3PU3TM;Initial Catalog=DB_KarnelTravelGuide;Persist Security Info=True;User ID=sa;Password=aptech;Persist Security Info=True;TrustServerCertificate=true;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Booking>(entity =>
        {
            entity.HasKey(e => e.BookingId).HasName("PK__Booking__35ABFDC09A133CBF");

            entity.ToTable("Booking");

            entity.Property(e => e.BookingId).HasColumnName("Booking_Id");
            entity.Property(e => e.Date).HasMaxLength(100);
            entity.Property(e => e.Deleted).HasDefaultValue(false);
            entity.Property(e => e.Destination).HasMaxLength(100);
            entity.Property(e => e.Email).HasMaxLength(100);
            entity.Property(e => e.Name).HasMaxLength(100);
            entity.Property(e => e.Request).HasMaxLength(100);
        });

        modelBuilder.Entity<Customer>(entity =>
        {
            entity.HasKey(e => e.CustomerId).HasName("PK__Customer__8CB28699AA7A45D3");

            entity.ToTable("Customer");

            entity.Property(e => e.CustomerId).HasColumnName("Customer_Id");
            entity.Property(e => e.Deleted).HasDefaultValue(false);
            entity.Property(e => e.InActive).HasDefaultValue(false);
            entity.Property(e => e.Name).HasMaxLength(100);
        });

        modelBuilder.Entity<CustomerInfo>(entity =>
        {
            entity.HasKey(e => e.CustomerInfoId).HasName("PK__Customer__7E5068B94BC23430");

            entity.ToTable("CustomerInfo");

            entity.Property(e => e.CustomerInfoId).HasColumnName("CustomerInfo_Id");
            entity.Property(e => e.CustomerAddress).HasMaxLength(100);
            entity.Property(e => e.CustomerCity).HasMaxLength(100);
            entity.Property(e => e.CustomerCountry).HasMaxLength(100);
            entity.Property(e => e.CustomerId).HasColumnName("Customer_Id");

            entity.HasOne(d => d.Customer).WithMany(p => p.CustomerInfos)
                .HasForeignKey(d => d.CustomerId)
                .HasConstraintName("FK__CustomerI__Custo__300424B4");
        });

        modelBuilder.Entity<HotelInfo>(entity =>
        {
            entity.HasKey(e => e.HotelInfoId).HasName("PK__HotelInf__9B7A0BCE88D8FB6D");

            entity.ToTable("HotelInfo");

            entity.Property(e => e.HotelInfoId).HasColumnName("HotelInfo_Id");
            entity.Property(e => e.City).HasMaxLength(100);
            entity.Property(e => e.Deleted).HasDefaultValue(false);
            entity.Property(e => e.Name).HasMaxLength(100);
        });

        modelBuilder.Entity<Login>(entity =>
        {
            entity.HasKey(e => e.LoginId).HasName("PK__Login__D7886B87F8772643");

            entity.ToTable("Login");

            entity.Property(e => e.LoginId).HasColumnName("Login_Id");
            entity.Property(e => e.Deleted).HasDefaultValue(false);
            entity.Property(e => e.Password).HasMaxLength(15);
            entity.Property(e => e.RoleId).HasColumnName("Role_Id");
            entity.Property(e => e.Username).HasMaxLength(20);

            entity.HasOne(d => d.Role).WithMany(p => p.Logins)
                .HasForeignKey(d => d.RoleId)
                .HasConstraintName("FK__Login__Role_Id__286302EC");
        });

        modelBuilder.Entity<Package>(entity =>
        {
            entity.HasKey(e => e.PackagesId).HasName("PK__Packages__D5FC585D07167EB9");

            entity.Property(e => e.PackagesId).HasColumnName("Packages_Id");
            entity.Property(e => e.Days).HasMaxLength(100);
            entity.Property(e => e.Deleted).HasDefaultValue(false);
            entity.Property(e => e.Description).HasMaxLength(500);
            entity.Property(e => e.Destination).HasMaxLength(100);
            entity.Property(e => e.Name).HasMaxLength(100);
            entity.Property(e => e.Persons).HasMaxLength(100);
            entity.Property(e => e.Price).HasColumnType("decimal(18, 2)");
        });

        modelBuilder.Entity<PopularSpot>(entity =>
        {
            entity.HasKey(e => e.PopularSpotsId).HasName("PK__PopularS__62A8DC98E2189346");

            entity.Property(e => e.PopularSpotsId).HasColumnName("PopularSpots_Id");
            entity.Property(e => e.Deleted).HasDefaultValue(false);
            entity.Property(e => e.Discount).HasMaxLength(100);
            entity.Property(e => e.Name).HasMaxLength(100);
        });

        modelBuilder.Entity<ResortInfo>(entity =>
        {
            entity.HasKey(e => e.ResortInfoId).HasName("PK__ResortIn__D32ABEB7A3AF4C83");

            entity.ToTable("ResortInfo");

            entity.Property(e => e.ResortInfoId).HasColumnName("ResortInfo_Id");
            entity.Property(e => e.City).HasMaxLength(100);
            entity.Property(e => e.Deleted).HasDefaultValue(false);
            entity.Property(e => e.Name).HasMaxLength(100);
        });

        modelBuilder.Entity<RestaurantInfo>(entity =>
        {
            entity.HasKey(e => e.RestaurantInfoId).HasName("PK__Restaura__0419230F1DF2D9FF");

            entity.ToTable("RestaurantInfo");

            entity.Property(e => e.RestaurantInfoId).HasColumnName("RestaurantInfo_Id");
            entity.Property(e => e.City).HasMaxLength(100);
            entity.Property(e => e.Deleted).HasDefaultValue(false);
            entity.Property(e => e.Name).HasMaxLength(100);
        });

        modelBuilder.Entity<Role>(entity =>
        {
            entity.HasKey(e => e.RoleId).HasName("PK__Roles__D80AB4BB6A40EC34");

            entity.Property(e => e.RoleId).HasColumnName("Role_Id");
            entity.Property(e => e.Deleted).HasDefaultValue(false);
            entity.Property(e => e.InActive).HasDefaultValue(false);
            entity.Property(e => e.Name).HasMaxLength(100);
        });

        modelBuilder.Entity<SearchInfo>(entity =>
        {
            entity.HasKey(e => e.SearchInfoId).HasName("PK__SearchIn__B4F6DC58DAA75245");

            entity.ToTable("SearchInfo");

            entity.Property(e => e.SearchInfoId).HasColumnName("SearchInfo_Id");
            entity.Property(e => e.City).HasMaxLength(100);
            entity.Property(e => e.ServiceType).HasMaxLength(100);
        });

        modelBuilder.Entity<TouristSpot>(entity =>
        {
            entity.HasKey(e => e.TouristSpotsId).HasName("PK__TouristS__5F1F3BE33F14C3F9");

            entity.Property(e => e.TouristSpotsId).HasColumnName("TouristSpots_Id");
            entity.Property(e => e.City).HasMaxLength(100);
            entity.Property(e => e.Deleted).HasDefaultValue(false);
            entity.Property(e => e.Name).HasMaxLength(100);
        });

        modelBuilder.Entity<TravelInfo>(entity =>
        {
            entity.HasKey(e => e.TravelInfoId).HasName("PK__TravelIn__E66CB9214C561696");

            entity.ToTable("TravelInfo");

            entity.Property(e => e.TravelInfoId).HasColumnName("TravelInfo_Id");
            entity.Property(e => e.City).HasMaxLength(100);
            entity.Property(e => e.Deleted).HasDefaultValue(false);
            entity.Property(e => e.Name).HasMaxLength(100);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
