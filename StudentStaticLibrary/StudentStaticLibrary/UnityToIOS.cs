using System.Runtime.InteropServices;

namespace DefaultNamespace
{
    public static class UnityToIOS
    {
        [DllImport("__Internal")]
        private static extern void _showMessage(string str);
        [DllImport("__Internal")]
        private static extern void _showMessage2();
        [DllImport("__Internal")]
        private static extern void showMessage3();
        [DllImport("__Internal")]
        private static extern string _lableName(string str);


        public static void ShowMeeage()
        {
//            _showMessage2();
            _showMessage(" 打 测 试");
//            showMessage3();
            _lableName("大白");
        }
        
        public static void ShowMeeageTop(string temp)
        {

            _showMessage2();
        }
    }
}