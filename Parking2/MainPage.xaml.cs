using Supabase;
using System.Drawing;
using System.Text.RegularExpressions;
using Parking.CustomElements;

namespace Parking
{
    public partial class MainPage : ContentPage
    {
        private void OnToggeled(object sender, EventArgs e)
        {
            Switch switchControl = (Switch)sender;
            if (switchControl.IsToggled)
            {
                switchControl.ThumbColor = Colors.Green;
            }
            else
            {
                switchControl.ThumbColor = Colors.Red;
            }
        }

        Client supabase;
        public MainPage()
        {
            InitializeComponent();
            string url = "";
            string key = "";
            SupabaseOptions options = new SupabaseOptions
            {
                AutoConnectRealtime = true
            };
            supabase =  new Client(url, key, options);
        }

        private void OnCarnumberQuest(object sender, EventArgs e)
        {
            DisplayAlert("Помощь", "Необходимо ввести номер автомобиля в формате: [4 цифры][2 буквы]-[номер региона].\nНапример: 7777BB-3", "ок");
        }

        private void OnFIOQuest(object sender, EventArgs e)
        {
            DisplayAlert("Помощь", "Введите полное ФИО (Пример: Иванов Иван Иванович)", "ок");
        }

        private async void RegistrationClick(object sender, EventArgs e)
        {
            if(CarNumber.Text == null || FIO.Text == null || Password.Text == null || SecondPassword.Text == null )
            {
                ErrorLabel.Text = "Вы не заполнили информацию!";
                ErrorLabel.IsVisible = true;
                return;
            }
            if (!ValidateText(CarNumber.Text))
            {
                ErrorLabel.Text = "Вы ввели номер машины неверно!";
                ErrorLabel.IsVisible = true;
                return;
            }
            string carNumber = CarNumber.Text;
            string[] words = FIO.Text.Split(' ');
            if(Password.Text != SecondPassword.Text)
            {
                ErrorLabel.Text = "Пароли не совпадают!";
                ErrorLabel.IsVisible = true;
                return;
            }
            string password = Password.Text;
            if(!Agree.IsToggled)
            {
                ErrorLabel.Text = "Вы не согласились с обработкой данных!";
                ErrorLabel.IsVisible = true;
                return;
            }
            ErrorLabel.IsVisible = false;
            await AddUser(supabase, words[1], words[0], words[2], carNumber, password);
            await DisplayAlert(" ", "Вы успешно зарегистрировались", "ок");
        }

        public static bool ValidateText(string input)
        {
            var regexPattern = @"^\d{4}[A-Za-z]{2}-[2-7]$";
            return Regex.IsMatch(input, regexPattern);
        }

        //Метод добавления пользователя в БД
        static async Task AddUser(Client supabase, string name, string surname, string secondName, string numberCar, string password)
        {
            var CheckedNumber = await supabase.From<User>().Select("car_number").Where(x => x.Car_number == numberCar).Get();
            if (CheckedNumber.Model != null)
                return;

            var balance_model = new Balance();
            await supabase.From<Balance>().Insert(balance_model);

            var lastBalance = await supabase.From<Balance>().Select("balance_id")
                .Order("balance_id", Supabase.Postgrest.Constants.Ordering.Descending)
                .Limit(1)
                .Get();

            var model = new User(name, surname, secondName, numberCar, lastBalance.Model.balance_id, password);
            await supabase.From<User>().Insert(model);
        }
    }

}
