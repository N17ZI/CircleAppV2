//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CircleAppV2
{
    using System;
    using System.Collections.Generic;
    
    public partial class Perfomance_Report1
    {
        public int ID { get; set; }
        public Nullable<int> ID_Perfomance1 { get; set; }
        public Nullable<int> ID_Report1 { get; set; }
    
        public virtual Perfomance Perfomance { get; set; }
        public virtual Report1 Report1 { get; set; }
    }
}
