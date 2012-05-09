using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;

namespace StudentBusiness
{
    [DataObject(true)]
    class Course
    {
        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Course> getAllCourses()
        {

        }


    }
}
