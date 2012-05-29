using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess.StudentDatasourceTableAdapters;

namespace BusinessTier
{
    public class Subject
    {
        static SubjectsTableAdapter tableAdapter = new SubjectsTableAdapter();

        public static DataAccess.StudentDatasource.SubjectsDataTable getAllSubjects()
        {

            return tableAdapter.GetAllSubjects();
        }

        public static DataAccess.StudentDatasource.SubjectsDataTable getAllSubjectsByCourseID(long id)
        {

            return tableAdapter.GetAllSubjectsByCourseID(id);
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
