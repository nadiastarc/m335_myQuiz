using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace APIQuiz_m335.Models
{
    public class QuestionsAnswers
    {
        [Key]
        public int ID { get; set; }
        public string Key { get; set; }
        public string Value { get; set; }

        [ForeignKey("TopicID")]
        public int TopicID { get; set; }

    }
}
