﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FMATS
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class FileTrackingEntities : DbContext
    {
        public FileTrackingEntities()
            : base("name=FileTrackingEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<C__MigrationHistory> C__MigrationHistory { get; set; }
        public virtual DbSet<AgentAccessLevel> AgentAccessLevels { get; set; }
        public virtual DbSet<Agent> Agents { get; set; }
        public virtual DbSet<AgentType> AgentTypes { get; set; }
        public virtual DbSet<AspNetRole> AspNetRoles { get; set; }
        public virtual DbSet<AspNetUserClaim> AspNetUserClaims { get; set; }
        public virtual DbSet<AspNetUserLogin> AspNetUserLogins { get; set; }
        public virtual DbSet<AspNetUser> AspNetUsers { get; set; }
        public virtual DbSet<Client> Clients { get; set; }
        public virtual DbSet<ClientCategory> ClientCategories { get; set; }
        public virtual DbSet<FileCategory> FileCategories { get; set; }
        public virtual DbSet<FileData> FileDatas { get; set; }
        public virtual DbSet<FilePriority> FilePriorities { get; set; }
        public virtual DbSet<Status> Status { get; set; }
        public virtual DbSet<StatusHistory> StatusHistories { get; set; }
    }
}