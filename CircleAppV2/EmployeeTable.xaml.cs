using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Linq;
using System.Windows;

namespace CircleAppV2
{
	/// <summary>
	/// Логика взаимодействия для EmployeeTable.xaml
	/// </summary>
	public partial class EmployeeTable : Window
	{
		public ObservableCollection<Worker> Workers { get; set; }
		public EmployeeTable()
		{
			InitializeComponent();
			Workers = new ObservableCollection<Worker>(ConnectionDB.circdb.Worker.ToList());
			DataContext = this;
		}
	}
}

