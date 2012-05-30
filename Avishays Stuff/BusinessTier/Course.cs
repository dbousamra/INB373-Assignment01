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

        public static DataAccess.StudentDatasource.CourseDataTable getCourseByID(long id)
        {

            return tableAdapter.getCourseByID(id);
        }       
    }
}
