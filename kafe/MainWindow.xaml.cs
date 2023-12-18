using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using kafe;

namespace kafe
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void AdminButton_Click(object sender, RoutedEventArgs e)
        {
            // код для перехода на экран администратора
            AdminWindow adminWindow = new AdminWindow();
            adminWindow.Show();
            this.Close();
        }

        private void ChefButton_Click(object sender, RoutedEventArgs e)
        {
            // код для перехода на экран повара
            ChefWindow chefWindow = new ChefWindow();
            chefWindow.Show();
            this.Close();
        }

        private void WaiterButton_Click(object sender, RoutedEventArgs e)
        {
            // код для перехода на экран официанта
            WaiterWindow waiterWindow = new WaiterWindow();
            waiterWindow.Show();
            this.Close();
        }
    }
}
