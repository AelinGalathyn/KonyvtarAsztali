using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KonyvtarAsztali
{
    public class Konyv
    {
        private int id;
        private string title;
        private string author;
        private int publish_year;
        private int page_count;

        public Konyv(int id, string title, string author, int publish_year, int page_count)
        {
            this.id = id;
            this.title = title;
            this.author = author;
            this.publish_year = publish_year;
            this.page_count = page_count;
        }

        public int Id { get => id; set => id = value; }
        public string Title { get => title; set => title = value; }
        public string Author { get => author; set => author = value; }
        public int Publish_year { get => publish_year; set => publish_year = value; }
        public int Page_count { get => page_count; set => page_count = value; }
    }
}
