using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace WebApplication1.Models
{
    public class FriendDbContext : DbContext
    {
        public FriendDbContext(DbContextOptions<FriendDbContext> options)
            : base(options)
        { }

     
        public DbSet<Friend> Friends { get; set; }
    }
}
