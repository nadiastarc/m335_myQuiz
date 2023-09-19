using System.ComponentModel.DataAnnotations;

namespace APIQuiz_m335.Models
{
    public class Topic
    {
        [Key]
        public int TopicID { get; set; }
        public string? TopicName { get; set; }

    }
}
