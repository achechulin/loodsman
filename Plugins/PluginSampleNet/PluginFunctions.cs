using System;
using System.IO;
using System.Text;
using System.Windows.Forms;
using System.Runtime.InteropServices;
using System.Reflection;
using RGiesecke.DllExport;
using Loodsman;
using DataProvider;
using WorkflowBusinessLogic;

namespace PluginSampleNet
{
    // Структура TPDMVersionData для автоопераций Workflow
    [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Ansi)]
    public struct PDMVersionData
    {
        [MarshalAs(UnmanagedType.I4)]
        public int routeId;
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 255)]
        public string appServer;
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 255)]
        public string db;
        [MarshalAs(UnmanagedType.I4)]
        public int id;
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 255)]
        public string product;
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 255)]
        public string type;
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 255)]
        public string version;
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 255)]
        public string state;
        [MarshalAs(UnmanagedType.I1)]
        public byte accessLevel;
        [MarshalAs(UnmanagedType.I1)]
        public byte lockLevel;
        [MarshalAs(UnmanagedType.I1)]
        public byte document;
        [MarshalAs(UnmanagedType.I1)]
        public byte revision;
    }

    // Структура Variant для автоопераций Workflow
    [StructLayout(LayoutKind.Sequential)]
    public struct Variant
    {
        public ushort vt;
        public ushort wReserved1;
        public ushort wReserved2;
        public ushort wReserved3;
        public IntPtr data1;
        public IntPtr data2;

        public Variant(VarEnum type)
        {
            vt = (ushort)type;
            wReserved1 = 0;
            wReserved2 = 0;
            wReserved3 = 0;
            data1 = (IntPtr)0;
            data2 = (IntPtr)0;
        }

        public Variant(bool value)
        {
            vt = (ushort)VarEnum.VT_BOOL;
            wReserved1 = 0;
            wReserved2 = 0;
            wReserved3 = 0;
            data1 = (IntPtr)Convert.ToInt32(value);
            data2 = (IntPtr)0;
        }

        public Variant(int value)
        {
            vt = (ushort)VarEnum.VT_I4;
            wReserved1 = 0;
            wReserved2 = 0;
            wReserved3 = 0;
            data1 = (IntPtr)value;
            data2 = (IntPtr)0;
        }

        public Variant(string value)
        {
            vt = (ushort)VarEnum.VT_BSTR;
            wReserved1 = 0;
            wReserved2 = 0;
            wReserved3 = 0;
            data1 = (IntPtr)UnsafeNativeMethods.SysAllocString(value);
            data2 = (IntPtr)0;
        }
    }

    public class PluginFunctions
    {
        private static bool _initialized = false;

        // Папка, из которой загружена сборка.
        // Из этой папки будут загружаться сборки от которых зависит текущая
        public static string InstallPath
        {
            get; 
            private set;
        }

        public static string PluginCaption = "Тестовый плагин";

        public static string[] PluginMenu = 
        {
            "ProjectList",    "BEFORE_MI_TOOLS#Мои плагины#Тестовый#Список проектов",
            "LinkedFast",     "BEFORE_MI_TOOLS#Мои плагины#Тестовый#Состав" ,
        };

        public static bool CheckMenuItem(string functionName, IPluginCall pluginCall)
        {
            if (functionName == "LinkedFast")
            { 
                return String.Compare(pluginCall.stType, "Документ") != 0;
            }
            return true;
        }

        public static void ProjectList(IPluginCall pluginCall)
        {
            object[] args = { };
            IDataSet dataSet = pluginCall.GetDataSet("GetProjectList", args);
            var builder = new StringBuilder();
            while (!dataSet.Eof)
            {
                builder.AppendFormat("{0}\n", dataSet.FieldValue["_PRODUCT"]);
                dataSet.Next();
            }
            MessageBox.Show(builder.ToString(), PluginCaption, MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        public static void LinkedFast(IPluginCall pluginCall)
        {
            var form = new LinkedObjects();
            UnsafeNativeMethods.SetWindowLong(form.Handle, UnsafeNativeMethods.GWL_HWNDPARENT, (IntPtr)pluginCall.ClientHandle);
            form.PluginCall = pluginCall;
            form.ShowDialog();
        }

        public static bool WFProjectList(IWFBusinessLogic wf, PDMVersionData versionData, object[] userData)
        {
            return true;
        }

        // Загрузка используемых сборок из папки, в которой находится текущая сборка.
        // По умолчанию сборки загружаются из папки в которой находится exe-файл
        private static Assembly currentDomain_AssemblyResolve(object sender, ResolveEventArgs args)
        {
            string fileName = Path.Combine(InstallPath, args.Name.Substring(0, args.Name.IndexOf(",")) + ".dll");
            if (File.Exists(fileName))
            {
                return Assembly.LoadFile(fileName);
            }
            return null;
        }

        private static void Initialize()
        {
            InstallPath = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location);
            AppDomain currentDomain = AppDomain.CurrentDomain;
            currentDomain.AssemblyResolve += currentDomain_AssemblyResolve;
        }

        // Эта функция должна быть реализована в плагинах, которые планируется использовать 
        // не только в дереве объектов. Если этой функции не будет, то команды плагина будут
        // доступны только для объектов дерева
        [DllExport("GetPluginInfo", CallingConvention.StdCall)]
        public static Int32 GetPluginInfo(Int32 Param, IntPtr Value)
        {
            return 0;
        }

        [DllExport("InitUserDLLCom", CallingConvention.StdCall)]
        public static Int32 InitUserDLLCom(IntPtr Value)
        {
            if (!_initialized)
            {
                Initialize();
                _initialized = true;
            }

            if (Value != IntPtr.Zero)
            {
                for (int i = 0; i < PluginMenu.Length / 2; ++i)
                {
                    byte[] func = Encoding.Default.GetBytes(PluginMenu[i * 2]);
                    byte[] menu = Encoding.Default.GetBytes(PluginMenu[i * 2 + 1]);
                    byte[] zero = {0};
                    Marshal.Copy(menu, 0, Value, menu.Length);
                    Marshal.Copy(zero, 0, Value + menu.Length, zero.Length);
                    Value += 255;
                    Marshal.Copy(func, 0, Value, func.Length);
                    Marshal.Copy(zero, 0, Value + func.Length, zero.Length);
                    Value += 255;
                }
            }
            return PluginMenu.Length / 2;
        }

        [DllExport("PgiCheckMenuItemCom", CallingConvention.StdCall)]
        public static Int32 PgiCheckMenuItemCom(IntPtr Function, IntPtr IPC)
        {
            try
            {
                string func = Marshal.PtrToStringAnsi(Function);
                IPluginCall pc = (IPluginCall)Marshal.GetTypedObjectForIUnknown(IPC, typeof(IPluginCall));
                return Convert.ToInt32(CheckMenuItem(func, pc));
            }
            catch (Exception)
            {
                return 0;
            }
        }

        [DllExport("ProjectList", CallingConvention.StdCall)]
        public static void _projectList(IntPtr IPC)
        {
            try
            {
                IPluginCall pc = (IPluginCall)Marshal.GetTypedObjectForIUnknown(IPC, typeof(IPluginCall));
                ProjectList(pc);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString(), PluginCaption, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        [DllExport("LinkedFast", CallingConvention.StdCall)]
        public static void _linkedFast(IntPtr IPC)
        {
            try
            {
                IPluginCall pc = (IPluginCall)Marshal.GetTypedObjectForIUnknown(IPC, typeof(IPluginCall));
                LinkedFast(pc);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString(), PluginCaption, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        // Функция для использования в автооперации Workflow с помощью ExecPluginFunction 
        [DllExport("WFProjectList", CallingConvention.StdCall)]
        public static Variant _wfProjectList(Variant wfo, IntPtr versionData, object[] userData)
        {
            if (!_initialized)
            {
                Initialize();
                _initialized = true;
            }
            try
            {
                if (wfo.vt != (ushort)VarEnum.VT_DISPATCH) 
                { 
                    throw new ArgumentException();
                }
                IWFBusinessLogic wf = (IWFBusinessLogic)Marshal.GetTypedObjectForIUnknown(wfo.data1, typeof(IWFBusinessLogic));
                PDMVersionData data = (PDMVersionData)Marshal.PtrToStructure(versionData, typeof(PDMVersionData));
                bool res = WFProjectList(wf, data, userData);
                return new Variant(res);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString(), PluginCaption, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return new Variant(VarEnum.VT_NULL);
            }
        }
    }
}
