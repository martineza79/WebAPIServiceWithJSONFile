﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAPIServiceWithJSONFile.Models
{
    public class Category
    {
        public string CategoryID { get; set; }
        public string ShortName { get; set; }
        public string LongName { get; set; }
    }
}