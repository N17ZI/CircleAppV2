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
    
    public partial class Perfomance_Report2
    {
        public int ID { get; set; }
        public Nullable<int> ID_Perfomance2 { get; set; }
        public Nullable<int> ID_Report2 { get; set; }
    
        public virtual Perfomance Perfomance { get; set; }
        public virtual Report2 Report2 { get; set; }
    }
}