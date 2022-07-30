﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using STEM.Models;

namespace STEM.Data
{
    public partial class STEMContext : DbContext
    {
        public STEMContext()
        {
        }

        public STEMContext(DbContextOptions<STEMContext> options)
            : base(options)
        {
        }

        public virtual DbSet<School> School { get; set; }
        public virtual DbSet<Subjects> Subjects { get; set; }
        public virtual DbSet<User> User { get; set; }
        public virtual DbSet<UserSubject> UserSubject { get; set; }
        public virtual DbSet<UserType> UserType { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<School>(entity =>
            {
                entity.Property(e => e.SchoolId).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Address)
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(100)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Subjects>(entity =>
            {
                entity.HasKey(e => e.SubjectId)
                    .HasName("Subjects_PK");

                entity.Property(e => e.SubjectId).HasDefaultValueSql("(newid())");

                entity.Property(e => e.SubjectName)
                    .IsRequired()
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.Type)
                    .HasMaxLength(100)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<User>(entity =>
            {
                entity.Property(e => e.UserId).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Password)
                    .IsRequired()
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.Surname)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Email)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.HasOne(d => d.School)
                    .WithMany(p => p.User)
                    .HasForeignKey(d => d.SchoolId)
                    .HasConstraintName("User_FK");

                entity.HasOne(d => d.UserType)
                    .WithMany(p => p.User)
                    .HasForeignKey(d => d.UserTypeId)
                    .HasConstraintName("UserType_FK");
            });

            modelBuilder.Entity<UserSubject>(entity =>
            {
                entity.Property(e => e.UserSubjectId).ValueGeneratedNever();

                entity.HasOne(d => d.Subject)
                    .WithMany(p => p.UserSubject)
                    .HasForeignKey(d => d.SubjectId)
                    .HasConstraintName("UserSubject_FK_1");

                entity.HasOne(d => d.User)
                    .WithMany(p => p.UserSubject)
                    .HasForeignKey(d => d.UserId)
                    .HasConstraintName("UserSubject_FK");
            });

            modelBuilder.Entity<UserType>(entity =>
            {
                entity.Property(e => e.UserTypeId).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Type)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}