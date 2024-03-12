using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
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
	/// Логика взаимодействия для RegUser.xaml
	/// </summary>
	public partial class RegUser : Window
	{
		public RegUser()
		{
			InitializeComponent();
		}

		private void RegisterUser_Click(object sender, RoutedEventArgs e)
		{
			try
			{
				if (NameTextBox.Text!=null && SurnameTextBox.Text!=null && PatronymicTextBox.Text != null && DateOfBirthDatePicker.Text != null && LoginTextBox.Text != null
					&& PasswordPasswordBox.Password != null && RoleTextBox.Text != null && ArtistTypeTextBox.Text != null)
				{
					string logincheck = LoginTextBox.Text;
					if(!ConnectionDB.circdb.Worker.Any(u => u.Login == logincheck))
						{
						Worker newWorker = new Worker
						{
							Name = NameTextBox.Text,
							Surname = SurnameTextBox.Text,
							Patronymic = PatronymicTextBox.Text,
							DateOfBirth = Convert.ToDateTime(DateOfBirthDatePicker.Text),
							Login = LoginTextBox.Text,
							Password = PasswordPasswordBox.Password,
							ID_Position = Convert.ToInt32(RoleTextBox.Text),
							ID_TypeOfArtist = Convert.ToInt32(ArtistTypeTextBox.Text),
							Phone = "898989"
						};

						ConnectionDB.circdb.Worker.Add(newWorker);
						ConnectionDB.circdb.SaveChanges();

						MessageBox.Show("Succesful");
					}
					else
					{
						MessageBox.Show("Already has");
					}
					
				}
				else
				{
					MessageBox.Show("У вас есть незаполненные поля!");
				}
			}
			catch
			{
			}
		}
    }
}
