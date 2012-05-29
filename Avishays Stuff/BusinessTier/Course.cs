using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess.StudentDatasourceTableAdapters;

namespace BusinessTier
{
    public class Course
    {
        static CourseTableAdapter tableAdapter = new CourseTableAdapter();

        public static DataAccess.StudentDatasource.CourseDataTable getAllCourses()
        {
           
            return tableAdapter.GetAllCourses();
        }
        //public static void InsertCourse(string name, long faculty_id, string course_code)
        //{
        //    tableAdapter.Insert(name, faculty_id, course_code);
        //}
    
        //public static void DeleteCustomer(long course_id)
        //{
        //    tableAdapter.Delete(course_id);
        //}
    }
}
