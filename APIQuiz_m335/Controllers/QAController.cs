using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using APIQuiz_m335.Models;

namespace APIQuiz_m335.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class QAController : ControllerBase
    {
        private readonly APIDbContext _context;

        public QAController(APIDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<QuestionsAnswers>>> GetQA()
        {
            return await _context.QuestionsAnswers.ToListAsync();
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<QuestionsAnswers>> GetQA(int id)
        {
            var qa = await _context.QuestionsAnswers.FindAsync(id);

            if (qa == null)
            {
                return NotFound();
            }

            return qa;
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutQA(int id, QuestionsAnswers qa)
        {
            if (id != qa.ID)
            {
                return BadRequest();
            }

            _context.Entry(qa).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!QAExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        [HttpPost]
        public async Task<ActionResult<QuestionsAnswers>> PostQA(QuestionsAnswers qa)
        {
            _ = _context.QuestionsAnswers.Add(qa);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetQA", new { id = qa.ID }, qa);
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteQA(int id)
        {
            var qa = await _context.QuestionsAnswers.FindAsync(id);
            if (qa == null)
            {
                return NotFound();
            }

            _context.QuestionsAnswers.Remove(qa);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool QAExists(int id)
        {
            return _context.QuestionsAnswers.Any(e => e.ID == id);
        }
    }
}
