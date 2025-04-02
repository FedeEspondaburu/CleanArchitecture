using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CleanArch.Domain.Interfaces;
using CleanArch.Domain.Models;
using CleanArch.Infra.Data.Context;

namespace CleanArch.Infra.Data.Repositories
{
    public class CourseRepository : ICourseRepository
    {
        private UniversityDBContext _context;
        public CourseRepository(UniversityDBContext ctx) => _context = ctx;

        public IEnumerable<Course> GetCourses()
        {
            return _context.Courses;
        }
    }
}
