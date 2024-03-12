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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CircleAppV2
{
	/// <summary>
	/// Логика взаимодействия для MainWindow.xaml
	/// </summary>
	public partial class MainWindow : Window
	{
		public MainWindow()
		{
			InitializeComponent();
		}
		private void EnterButton_Click(object sender, RoutedEventArgs e)
		{
			string login = LoginTextBox.Text;
			string password = PasswordBox.Password;
			if (ConnectionDB.circdb.Worker.Any(u => u.Login == login && u.Password == password))
			{
				Worker user = ConnectionDB.circdb.Worker.FirstOrDefault(x => x.Login == login);
				
				int pos = user.ID_Position;

				switch (pos)
				{
					case 1:
						AdminWindow admin = new AdminWindow();
						admin.Show();
						this.Close();
						break;
					case 2:
						ArtistWindow artist = new ArtistWindow();
						artist.Show();
						this.Close();
						break;
					case 3:
						DressWindow dress = new DressWindow();
						dress.Show();
						this.Close();
						break;
					case 4:
						EmployeeWindow empl = new EmployeeWindow();
						empl.Show();
						this.Close();
						break;
				}
			}
		}
	}
}
