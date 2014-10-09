using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Travelling.FrameWork
{
    public class ObjectContainer<T>
    {
        public T Item { set; get; }
        
    }

    public class ObjectContainer<T,S>
    {
        public T Item_T { set; get; }
        public S Item_S { set; get; }
    }

    public class ObjectContainer<T, S,X>
    {
        public T Item_T { set; get; }
        public S Item_S { set; get; }

        public X Item_X { set; get; }
    }

    public class ObjectContainer<T, S, X,Y>
    {
        public T Item_T { set; get; }
        public S Item_S { set; get; }

        public X Item_X { set; get; }

        public Y Item_Y { set; get; }
    }

    public class ObjectContainer<T, S, X, Y,Z>
    {
        public T Item_T { set; get; }
        public S Item_S { set; get; }

        public X Item_X { set; get; }

        public Y Item_Y { set; get; }

        public Z Item_Z { set; get; }
    }

}
