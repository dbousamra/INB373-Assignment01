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

        public static DataAccess.StudentDatasource.SubjectsDataTable getSubjectsByID(long id)
        {

            return tableAdapter.GetSubjectByID(id);
        }

        public static DataAccess.StudentDatasource.SubjectsDataTable getSubjectsByUserID(long id)
        {

            return tableAdapter.getSubjectsByUserID(id);
        }    
    }
}
