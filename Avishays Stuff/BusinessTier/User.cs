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

        public static DataAccess.StudentDatasource.UserDataTable getUserByID(long id)
        {
            return tableAdapter.getUserByID(id);
        }

        public static DataAccess.StudentDatasource.UserDataTable getUserByName(String name)
        {
            return tableAdapter.getUserByName(name);
        }
        public static int getUserIDByLoginName(String name)
        {
            return int.Parse(tableAdapter.getUserIDByLoginName2(name).ToString());
        }
    }
}
