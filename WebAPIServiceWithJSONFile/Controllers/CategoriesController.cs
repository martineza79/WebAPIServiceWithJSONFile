﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebAPIServiceWithJSONFile.Models;

namespace WebAPIServiceWithJSONFile.Controllers
{
    public class CategoriesController : ApiController
    {
        CategoryDB data;

        public CategoriesController()
        {
            this.data = new CategoryDB();
        }

        // GET: api/categories
        public IEnumerable<Category> GetCategories()
        {
            return data.GetCategories();
        }

        // GET: api/categories/masks
        public Category GetCategoryById(string id)
        {
            return data.GetCategoryById(id);
        }

        // GET: api/categories/?name=Masks
        public IEnumerable<Category> GetCategoriesByShortName(string name)
        {
            return data.GetCategoriesByShortName(name);
        }

        // POST(Insert): api/categories
        public int PostCategory(string id, [FromBody]Category value)
        {
            value.CategoryID = id;
            return data.InsertCategory(value);
        }

        // PUT(Update): api/categories/masks
        public int PutCategory(string id, [FromBody]Category value)
        {
            value.CategoryID = id;
            return data.UpdateCategory(value);
        }

        // DELETE: api/categories/masks
        public int DeleteCategory(string id)
        {
            Category value = new Category() { CategoryID = id };
            return data.DeleteCategory(value);
        }
    }
}
