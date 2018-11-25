﻿namespace KbUtil.Lib
{
    using System;
    using System.IO;
    using System.Reflection;

    internal class Utilities
    {
        public  static string AssemblyDirectory
        {
            get
            {
                string codeBase = Assembly.GetExecutingAssembly().CodeBase;
                UriBuilder uri = new UriBuilder(codeBase);
                string path = Uri.UnescapeDataString(uri.Path);
                return Path.GetDirectoryName(path);
            }
        }
    }
}
