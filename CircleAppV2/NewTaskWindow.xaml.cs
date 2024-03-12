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
	/// Логика взаимодействия для NewTaskWindow.xaml
	/// </summary>
	public partial class NewTaskWindow : Window
	{
		public NewTaskWindow()
		{
			InitializeComponent();
			timeTextBox.Text = DateTime.Now.ToString();
		}
		private void SendButton_Click(object sender, RoutedEventArgs e)
		{
			try
			{
				Taskk task = new Taskk
				{
					ID_ServiceStaff = Convert.ToInt32(ID_ser.Text),
					Description = Desc.Text,
					DoneOrNo = null,
					DateTime = Convert.ToDateTime(timeTextBox.Text),
				};

				ConnectionDB.circdb.Taskk.Add(task);
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
