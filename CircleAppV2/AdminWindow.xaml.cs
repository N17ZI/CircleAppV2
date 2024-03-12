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

namespace CircleAppV2
{
	/// <summary>
	/// Логика взаимодействия для AdminWindow.xaml
	/// </summary>
	public partial class AdminWindow : Window
	{
		public AdminWindow()
		{
			InitializeComponent();
		}

		private void RegUser_Click(object sender, RoutedEventArgs e)
		{
			RegUser regUser = new RegUser();
			regUser.Show();
		}

		private void NewAnimal_Click(object sender, RoutedEventArgs e)
		{
			NewAnimalWindow animal = new NewAnimalWindow();
			animal.Show();
		}
		private void Employes_Click(object sender, RoutedEventArgs e)
		{
			EmployeeTable table = new EmployeeTable();
			table.Show();
		}
		private void NewTask_Click(object sender, RoutedEventArgs e)
		{
			NewTaskWindow task = new NewTaskWindow();
			task.Show();
		}
	}
}
