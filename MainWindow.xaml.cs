using System;
using System.Collections.Generic;
using System.Windows;

namespace StrainApplication
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        static public List<int> list = new()
        {
            7, 3, 6, 2, 1, 5, 9, 4, 8
        };

        public MainWindow()
        {
            InitializeComponent();
        }

        private void Keep_Click(object sender, RoutedEventArgs e)
        {
            ResultTextBox.Text = String.Join(" ", Strain.Keep(list, Strain.Pari));
        }

        private void Discard_Click(object sender, RoutedEventArgs e)
        {
            ResultTextBox.Text = String.Join(" ", Strain.Discard(list, Strain.Dispari));
        }
    }
}
