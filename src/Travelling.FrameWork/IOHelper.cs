using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace Travelling.FrameWork
{
    /// <summary>
    /// 文件操作相关
    /// </summary>
    public class IOHelper
    {
        /// <summary>
        /// 创建文件夹
        /// </summary>
        /// <param name="folderName"></param>
        public static void CreateFolder(string folderName)
        {
            if(!Directory.Exists(folderName))
            {
                Directory.CreateDirectory(folderName);
            }
        }

        /// <summary>
        /// 写入文件
        /// </summary>
        /// <param name="fileName"></param>
        /// <param name="content"></param>
        /// <param name="isAppend"></param>
        public static void WriteToFiles(string fileName,string content,bool isAppend = true)
        {
            if(!File.Exists(fileName))
            {
                File.Create(fileName);
            }

            using (System.IO.StreamWriter file = new System.IO.StreamWriter(fileName, isAppend))
            {
                file.WriteLine(content);
            }
        }

        /// <summary>
        /// 读取文件内容
        /// </summary>
        /// <param name="fileName"></param>
        public static void ReadFile(string fileName)
        {
            string fileContent = File.ReadAllText(fileName, Encoding.UTF8);
        }
    }
}
