﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace kafeuyt
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class tr24_kafe_tomilovEntities : DbContext
    {
        public tr24_kafe_tomilovEntities()
            : base("name=tr24_kafe_tomilovEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Items_type> Items_type { get; set; }
        public virtual DbSet<MenuItems> MenuItems { get; set; }
        public virtual DbSet<Orders> Orders { get; set; }
        public virtual DbSet<Roles> Roles { get; set; }
        public virtual DbSet<Users> Users { get; set; }
        public virtual DbSet<Shifts> Shifts { get; set; }
    }
}
