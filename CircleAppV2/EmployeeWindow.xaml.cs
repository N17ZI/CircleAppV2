using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
	/// Логика взаимодействия для EmployeeWindow.xaml
	/// </summary>
	public partial class EmployeeWindow : Window
	{
		public ObservableCollection<Taskk> Tasks { get; set; }
		public EmployeeWindow()
		{
			InitializeComponent();
			Tasks = new ObservableCollection<Taskk>(ConnectionDB.circdb.Taskk.ToList());
			DataContext = this;
		}
	}
}
