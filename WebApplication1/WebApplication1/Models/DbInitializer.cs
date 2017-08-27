using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication1.Models
{
    public class DbInitializer
    {
        public static void Initialize(FriendDbContext context)
        {
            context.Database.EnsureCreated();

            // Look for any students.
            if (context.Friends.Any())
            {
                return;   // DB has been seeded
            }

            context.Friends.AddRange(

      new Friend
      {
          Name = "A",
          Status = "Present",
          Address = "Test",
          Available = "Yes",
          Phone = "12233"
      }, new Friend
      {
          Name = "B",
          Status = "Present",
          Address = "Test",
          Available = "Yes",
          Phone = "12233"
      }, new Friend
      {
          Name = "C",
          Status = "Present",
          Address = "Test",
          Available = "Yes",
          Phone = "12233"
      }, new Friend
      {
          Name = "D",
          Status = "Present",
          Address = "Test",
          Available = "Yes",
          Phone = "12233"
      }, new Friend
      {
          Name = "A",
          Status = "Present",
          Address = "Test",
          Available = "Yes",
          Phone = "12233"
      });



            context.SaveChanges();
        }
    }
}
