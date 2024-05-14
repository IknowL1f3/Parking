using Supabase.Postgrest.Attributes;
using Supabase.Postgrest.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Parking.CustomElements
{
    [Table("User")]
    class User : BaseModel
    {
        [PrimaryKey("user_id", false)]
        public int Id { get; set; }

        [Column("name")]
        public string Name { get; set; }

        [Column("surname")]
        public string Surname { get; set; }

        [Column("secondname")]
        public string Secondname { get; set; }

        [Column("car_number")]
        public string Car_number { get; set; }

        [Column("password")]
        public string Password { get; set; }

        [Column("balance_id")]
        public int Balance_id { get; set; }

        public User()
        {

        }
        public User(string name, string surname, string secondName, string carNumber, int balance_id, string password)
        {
            this.Name = name;
            this.Surname = surname;
            if (secondName != null)
                this.Secondname = secondName;
            this.Car_number = carNumber;
            this.Balance_id = balance_id;
            Password = password;
        }

    }

    [Table("Balance")]
    class Balance : BaseModel
    {
        [PrimaryKey("balance_id", false)]
        public int balance_id { get; set; }

        [Column("balance")]
        public decimal balance { get; set; }

        public void GetAll()
        {
            Console.WriteLine($"{balance_id}, {balance}");
        }
    }

    [Table("ParkingEvent")]
    class ParkingEvent : BaseModel
    {
        [PrimaryKey("event_id", false)]
        public int event_id { get; set; }

        [Column("entry_time")]
        public DateTime entry_time { get; set; }

        [Column("departure_time")]
        public DateTime departure_time { get; set; }

        [Column("user_id")]
        public int user_id { get; set; }

        [Column("parking_id")]
        public int parking_id { get; set; }

        public ParkingEvent()
        {

        }

        public ParkingEvent(DateTime entry_time, DateTime departure_time, int user_id, int parking_id)
        {
            this.entry_time = entry_time;
            this.departure_time = departure_time;
            this.user_id = user_id;
            this.parking_id = parking_id;
        }
    }

    [Table("Parking")]
    class Parking : BaseModel
    {
        [PrimaryKey("parking_id", false)]
        public int parking_id { get; set; }

        [Column("name")]
        public string name { get; set; }

        [Column("address")]
        public string address { get; set; }

    }
}
