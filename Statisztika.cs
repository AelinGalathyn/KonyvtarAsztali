using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KonyvtarAsztali
{
    public class Statisztika
    {
        private List<Konyv> konyvek;
        private MySqlConnectionStringBuilder connectionStringBuilder;

        public Statisztika()
        {
            konyvek = new List<Konyv>();
            connectionStringBuilder = new MySqlConnectionStringBuilder();
            Beolvas();
            Otszaz();
            Regi();
            Leghosszabb();
            Legtobb();
            Kikolcsonozve();
        }

        private void Beolvas()
        {
            connectionStringBuilder.Server = "localhost";
            connectionStringBuilder.Port = 3306;
            connectionStringBuilder.Database = "vizsga-2022-14s-wip-db";
            connectionStringBuilder.UserID = "root";
            connectionStringBuilder.Password = "";

            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionStringBuilder.ConnectionString))
                {
                    connection.Open();
                    string sql = "SELECT * FROM books";
                    MySqlCommand command = connection.CreateCommand();
                    command.CommandText = sql;
                    using (MySqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            konyvek.Add(new Konyv(reader.GetInt32("id"), reader.GetString("title"), reader.GetString("author"), reader.GetInt32("publish_year"), reader.GetInt32("page_count")));
                        }
                    }
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
        }

        private void Kiirat()
        {
            foreach (var item in konyvek)
            {
                Console.WriteLine(item.Title);
            }
        }

        private void Otszaz()
        {
            Console.WriteLine($"500 oldalnál hosszabb könyvek száma: {konyvek.Count(x => x.Page_count > 500)}");
        }

        private void Regi()
        {
            if(konyvek.Exists(x => x.Publish_year < 1950))
            {
                Console.WriteLine("Van 1950-nél régebbi könyv");
            }
            else
            {
                Console.WriteLine("Nincs 1950-nél régebbi könyv");
            }
        }

        private void Leghosszabb()
        {
            Konyv konyv = konyvek.Find(x => x.Page_count == konyvek.Max(x => x.Page_count));
            Console.WriteLine($"A leghosszabb könyv:\n" +
                $"\tSzerző: {konyv.Author}\n" +
                $"\tCím: {konyv.Title}\n" +
                $"\tKiadás éve: {konyv.Publish_year}\n" +
                $"\tOldalszám: {konyv.Page_count}");
        }

        private void Legtobb()
        {
            var legtobb = konyvek.GroupBy(x => x.Author).Select(x => new { Author = x.Key, BookCount = x.Count() }).OrderByDescending(x => x.BookCount).FirstOrDefault();
            Console.WriteLine($"A legtöbb könyvvel rendelkező szerző: {legtobb.Author}");
        }

        private void Kikolcsonozve()
        {
            Console.Write("Adjon meg egy könyv címet: ");
            string title = Console.ReadLine();
            Konyv konyv = konyvek.Find(x => x.Title == title);
            if(konyv != null)
            {
                Console.WriteLine($"A megadott könyv {konyvek.Count(x => x.Title == title)}x lett kikölcsönözve");
            }
            else
            {
                Console.WriteLine("Nincs ilyen könyv");
            }
        }
    }
}
