using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;

namespace StudentObjects
{
    class Course
    {

        [DataObjectField(true)]
        public long id {
            get;
            set;
        }

        [DataObjectField(false)]
        public string name {
            get;
            set;
        }

        [DataObjectField(false)]
        public long faculty_id {
            get;
            set;
        }
        [DataObjectField(false)]
        public string course_code {
            get;
            set;
        }
    }
}
