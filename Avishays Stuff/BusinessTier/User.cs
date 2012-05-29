using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess.StudentDatasourceTableAdapters;
using DataAccess;

namespace BusinessTier
{
    public class User
    {
        static UserTableAdapter tableAdapter = new UserTableAdapter();

        public static DataAccess.StudentDatasource.UserDataTable getAllUsers()
        {
            return tableAdapter.GetAllUsers();
        }

        public static int enrolUserInCourseById(long userId, long courseId)
        {
            return tableAdapter.enrolUserInCourseById(userId, courseId);
        }
    }
}
