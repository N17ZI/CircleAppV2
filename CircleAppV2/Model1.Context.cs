﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CircleAppV2
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class CircEntities : DbContext
    {
        public CircEntities()
            : base("name=CircEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Animal> Animal { get; set; }
        public virtual DbSet<AnimalType> AnimalType { get; set; }
        public virtual DbSet<Applicationn> Applicationn { get; set; }
        public virtual DbSet<Cabinet> Cabinet { get; set; }
        public virtual DbSet<Cage> Cage { get; set; }
        public virtual DbSet<CostumeDept> CostumeDept { get; set; }
        public virtual DbSet<DressingRoom> DressingRoom { get; set; }
        public virtual DbSet<Gender> Gender { get; set; }
        public virtual DbSet<Perfomance> Perfomance { get; set; }
        public virtual DbSet<Perfomance_Report1> Perfomance_Report1 { get; set; }
        public virtual DbSet<Perfomance_Report2> Perfomance_Report2 { get; set; }
        public virtual DbSet<PerfomanceType> PerfomanceType { get; set; }
        public virtual DbSet<Position> Position { get; set; }
        public virtual DbSet<Report1> Report1 { get; set; }
        public virtual DbSet<Report2> Report2 { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<Taskk> Taskk { get; set; }
        public virtual DbSet<Timetable> Timetable { get; set; }
        public virtual DbSet<TypeOfArtist> TypeOfArtist { get; set; }
        public virtual DbSet<Worker> Worker { get; set; }
    }
}
