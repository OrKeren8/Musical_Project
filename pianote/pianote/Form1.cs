using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace pianote
{
    public partial class Form1 : Form
    {
        int press = 200, between = 50;

        int[] note1 = { 1, 2, 3, 4, 5, 6, 7, 8,7,6,5,4,3,2,1 };
        int[] note2 = { 1,5,7,9,4,6,3,2,1,7};
        int[] noteRec = new int[100];
        int recP = 0;
        bool isRec = false;


        Color pressC = Color.LightSteelBlue;
        Color defaultC = Color.DarkGray;
        public Form1()
        {
            InitializeComponent();
          
        }

        private void button1_Click(object sender, EventArgs e)
        {
            
            for (int i =0; i < note1.Length; i++)
            {
                blink(note1[i]);
            }
            

        }

        private void button2_Click(object sender, EventArgs e)
        {

            for (int i = 0; i < note2.Length; i++)
            {
                blink(note2[i]);
            }
        }
        private void KeyChoose(int n, Color C)
        {
            switch (n)
            {
                case 1: pictureBox1.BackColor = C; break;
                case 2: pictureBox2.BackColor = C; break;
                case 3: pictureBox3.BackColor = C; break;
                case 4: pictureBox4.BackColor = C; break;
                case 5: pictureBox5.BackColor = C; break;
                case 6: pictureBox6.BackColor = C; break;
                case 7: pictureBox7.BackColor = C; break;
                case 8: pictureBox8.BackColor = C; break;


            }
        }
        private void button3_Click(object sender, EventArgs e)
        {
            if (isRec)
            {
                isRec = false;
                pictureBox9.BackColor = Color.DarkGray;
                Application.DoEvents();
            }
            else
            {
                pictureBox9.BackColor = Color.Red;
                Application.DoEvents();
                noteRec = new int[100];
                recP = 0;
                isRec = true;
            }
              
        }
        private void button12_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < note1.Length; i++)
            {
                if (noteRec[i] != 0)
                    blink(noteRec[i]);
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            blink(1);
            if (isRec)
            {
                noteRec[recP] = 1;
                recP++;
            }

        }
        private void button5_Click(object sender, EventArgs e)
        {
            blink(2);
            if (isRec)
            {
                noteRec[recP] = 2;
                recP++;
            }
        }
        private void button6_Click(object sender, EventArgs e)
        {
            blink(3);
            if (isRec)
            {
                noteRec[recP] = 3;
                recP++;
            }
        }
        private void button7_Click(object sender, EventArgs e)
        {
            blink(4);
            if (isRec)
            {
                noteRec[recP] = 4;
                recP++;
            }
        }
        private void button8_Click(object sender, EventArgs e)
        {
            blink(5);
            if (isRec)
            {
                noteRec[recP] = 5;
                recP++;
            }
        }
        private void button9_Click(object sender, EventArgs e)
        {
            blink(6);
            if (isRec)
            {
                noteRec[recP] = 6;
                recP++;
            }
        }
        private void button10_Click(object sender, EventArgs e)
        {
            blink(7);
            if (isRec)
            {
                noteRec[recP] = 7;
                recP++;
            }
        }
        private void button11_Click(object sender, EventArgs e)
        {
            blink(8);
            if (isRec)
            {
                noteRec[recP] = 8;
                recP++;
            }
        }



        private void blink(int n)
        {
            KeyChoose(n, pressC);
            Application.DoEvents();
            System.Threading.Thread.Sleep(press);

            KeyChoose(n, defaultC);
            Application.DoEvents();
            System.Threading.Thread.Sleep(between);
        }

    }
}
