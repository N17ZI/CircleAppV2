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
    
    public partial class Cabinet
    {
        public int ID { get; set; }
        public string Type { get; set; }
        public Nullable<int> ID_Worker { get; set; }
    
        public virtual Worker Worker { get; set; }
    }
}
