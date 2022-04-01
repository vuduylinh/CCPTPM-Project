using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace banhkem
{
    public partial class Frm_themSoluong_Mon : Form
    {
        int soluongSP;
        int huymon = 0;
        public Frm_themSoluong_Mon()
        {
            InitializeComponent();
        }

        public Frm_themSoluong_Mon(int soluong)
        {
            // Nhận số lượng của sản phẩm từ Form bán hàng
            InitializeComponent();
            soluongSP = soluong;
        }

        //Lưu vào biến công khai của form này để sau này ở Frm_Banghang gọi về lấy lại
        //biến giá trị [số lượng] mà người dùng chọn ở frm này.
        public int soluongSP_Text
        {
            get { return soluongSP; }
            set { soluongSP = Convert.ToInt32(value); }
        }

        //Lưu vào biến công khai của form này để sau này ở Frm_Banghang gọi về để so sánh xem có nên
        //hủy món hoặc thay đổi thành tiền của sản phẩm người dùng chọn sau khi
        // thay đổi số lượng.
        public int huychonSP
        {
            get { return huymon; }
            set { huymon = value; }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            // Con số trong numbueric_up_down có kiểu là Decimal nên phải chuyển về int
            soluongSP = Convert.ToInt32(nUD_SoLuongSP.Value);
            this.Close();
        }


        private void button2_Click(object sender, EventArgs e)
        {
            // Nếu chọn hủy món thì sẽ lưu giá trị là 1
            huymon = 1;
           this.Close();
        } 
        private void Frm_themSoluong_Mon_Load_1(object sender, EventArgs e)
        {
            // Hiện số lượng của sản phẩm đã chọn ở Form Banghang
            nUD_SoLuongSP.Value = Convert.ToDecimal(soluongSP.ToString());
        }
    }
}
