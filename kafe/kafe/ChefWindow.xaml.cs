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
    public partial class ChefWindow : Window
    {
        public ChefWindow()
        {
            InitializeComponent();
        }

        private void ViewOrdersButton_Click(object sender, RoutedEventArgs e)
        {
            // Добавьте код для обработки нажатия на кнопку "Просмотр заказов"
            // Например, откройте новое окно или выполните соответствующие действия.
        }

        private void ChangeOrderStatusButton_Click(object sender, RoutedEventArgs e)
        {
            // Добавьте код для обработки нажатия на кнопку "Изменить статус заказа"
            // Например, откройте новое окно или выполните соответствующие действия.
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
