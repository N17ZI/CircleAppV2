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
	
	public partial class ArtistWindow : Window
	{
		public ObservableCollection<Timetable> Timetables { get; set; }
		public ArtistWindow()
		{
			InitializeComponent();
			Timetables = new ObservableCollection<Timetable>(ConnectionDB.circdb.Timetable.ToList());
			DataContext = this;
		}
	}
/**/
}
