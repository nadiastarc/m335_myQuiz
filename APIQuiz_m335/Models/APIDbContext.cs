using Microsoft.EntityFrameworkCore;

namespace APIQuiz_m335.Models
{
    public class APIDbContext : DbContext
    {
        public APIDbContext(DbContextOptions option) : base(option)
        { }

        public DbSet<Topic> Topics { get; set; }
        public DbSet<QuestionsAnswers> QuestionsAnswers { get; set; }
    }
}
