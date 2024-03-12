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
	/// Логика взаимодействия для DressWindow.xaml
	/// </summary>
	public partial class DressWindow : Window
	{
		public DressWindow()
		{
			InitializeComponent();
			timeTextBox.Text = "0";
		}

		private void SendButton_Click(object sender, RoutedEventArgs e)
		{
			try
			{
					Timetable table = new Timetable
						{
							ID = Convert.ToInt32(IdTextBox.Text),
							ID_Artist = Convert.ToInt32(artistIdTextBox.Text),
							ID_Perfomance = Convert.ToInt32(performanceIdTextBox.Text),
							time = TimeSpan.Zero,
						};

						ConnectionDB.circdb.Timetable.Add(table);
						ConnectionDB.circdb.SaveChanges();

						MessageBox.Show("Succesful");
			
			}
			catch
			{
				MessageBox.Show("Already has");
			}
		}
	}
}
