using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace kafe
{
    public partial class AdminWindow : Window
    {
        public AdminWindow()
        {
            InitializeComponent();
        }

        private void RegisterUsersButton_Click(object sender, RoutedEventArgs e)
        {
            // код для обработки нажатия на кнопку "Регистрация новых пользователей"
        }

        private void FireEmployeesButton_Click(object sender, RoutedEventArgs e)
        {
            // код для обработки нажатия на кнопку "Увольнение сотрудников"
        }

        private void AssignShiftsButton_Click(object sender, RoutedEventArgs e)
        {
            // код для обработки нажатия на кнопку "Назначение на смены"
        }

        private void ViewAllOrdersButton_Click(object sender, RoutedEventArgs e)
        {
            // код для обработки нажатия на кнопку "Просмотр всех заказов"
        }

        private void BackToMain_Click(object sender, RoutedEventArgs e)
        {
            // Вернуться на главное окно
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            this.Close();
        }

    }
}
