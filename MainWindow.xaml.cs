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

namespace ResistorsColor;

    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            String[] colors = { "Black", "Brown", "Red", "Orange", "Yellow", "Grren", "Blue", "Purple", "Gray", "White" };

            foreach(string value in colors)
            {
                MyComboBox.Items.Add($"{value}");
            }

        }

    private void MyComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
    {
        MyTextBox.Text = MyComboBox.SelectedIndex.ToString();
    }
}
