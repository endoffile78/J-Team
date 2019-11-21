using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace main_master.Blog
{
    public class BlogPost
    {
        public Guid blogID;
        public string title;
        public Guid author_uid;
        public string author_name;
        public string body;
        public string[] tags;
    }
}