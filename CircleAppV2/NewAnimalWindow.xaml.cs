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
	public partial class NewAnimalWindow : Window
	{
		public NewAnimalWindow()
		{
			InitializeComponent();
		}
		private void RegisterAnimal_Click(object sender, RoutedEventArgs e)
		{
			try
			{
				if (Name.Text!=null && type.Text!=null && Age.Text != null && gender.Text != null && weight.Text != null
					&& Food.Text != null && Care.Text != null && Trainer.Text != null)
				{
					string logincheck = Name.Text;
					if (!ConnectionDB.circdb.Animal.Any(u => u.Name == logincheck))
					{
						Animal newAnimal = new Animal
						{
							Name = Name.Text,
							ID_Type = Convert.ToInt32(type.Text),
							Age = Convert.ToInt32(Age.Text),
							ID_Gender = Convert.ToInt32(gender.Text),
							Weight = Convert.ToInt32(weight.Text),
							FoodPreference = Food.Text,
							CareRecommendations = Care.Text,
							ID_Trainer = Convert.ToInt32(Trainer.Text),
						};

						ConnectionDB.circdb.Animal.Add(newAnimal);
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
